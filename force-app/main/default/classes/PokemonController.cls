public with sharing class PokemonController {
    @AuraEnabled(cacheable=true)
    public static List<Pokemon__c> showAllPokemon() {
        List<Pokemon__c> pokeList = [ SELECT
                                        Id,
                                        PokeIndex__c,
                                        Name,
                                        Foto_URL__c,
                                        Tipo__c,
                                        Altura__c,
                                        Peso__c,
                                        Generaci_n__c
                                    FROM Pokemon__c   
                                    ORDER BY PokeIndex__c
                                    ];
        if(pokeList.isEmpty()) throw new AuraException('Error,lista pokemon vacia');
        return pokeList;
    }
 
    @AuraEnabled(Cacheable=true)
    public static List<Pokemon__c> searchPokemon(String tipo,String nombre,String generacion) {
        System.debug('entro en método search');
        try {
            String condicion ='';
            String query='';

            if(generacion!= null){
                condicion += ' AND Generaci_n__c = '+ generacion;
            }
            if(tipo!= null){
                condicion += ' AND Tipo__c INCLUDES (:tipo)';
             
            } 
            if(nombre!=null){
                nombre = String.escapeSingleQuotes(nombre);
                nombre = nombre.trim();
                nombre = '%' + nombre + '%';
                condicion +=  ' AND Name LIKE :nombre';
            }
          
            query = 'SELECT Id,PokeIndex__c,Name, Foto_URL__c,Tipo__c,Altura__c,Peso__c,Generaci_n__c FROM Pokemon__c  WHERE  Name!=null'+condicion+' ORDER BY PokeIndex__c';
            List<Pokemon__c> pokeList = Database.query(query);
            return pokeList;
        } catch(Exception e) {
            throw new AuraException('Ocurrio un error al realizar la constula: '+ e.getMessage());
        }
    }
}