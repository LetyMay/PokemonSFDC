public with sharing class InsertPokemonBatch implements Database.Batchable<Pokemon__c>,Database.AllowsCallouts,Database.Stateful {
    private List<Pokemon__c>pokemonList;
    public InsertPokemonBatch(List<Pokemon__c>pokemonList){
        this.pokemonList = pokemonList;
    }
    public Iterable<Pokemon__c> start(Database.BatchableContext bc) {
        return pokemonList;
    }

    public void execute(Database.BatchableContext bc, List<Pokemon__c> ListPokemonToInsert){
        try{
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://pokeapi.co/api/v2/pokemon/' + ListPokemonToInsert[0].PokeIndex__c);
            request.setHeader('Content-Type','application/json');
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            // If the request is successful, parse the JSON response.
            if(response.getStatusCode() == 200) {
           		
                Pokemon pokemonR = Pokemon.parse(response.getBody());
                
                Pokemon__c pokemonS = new Pokemon__c ();
                pokemonS.Name = pokemonR.name.capitalize();
                pokemonS.Altura__c = pokemonR.height + ' ft.';
                pokemonS.Peso__c = pokemonR.weight + ' lbs.';
                pokemonS.PokeIndex__c = pokemonR.id;
                pokemonS.Foto_URL__c = pokemonR.sprites.front_default;
                
                if (pokemonR.id > 0 && pokemonR.id < = 151){
                    pokemonS.Generaci_n__c = 1;
                }else if (pokemonR.id > 151 && pokemonR.id <= 251){
                    pokemonS.Generaci_n__c = 2;
                }else if (pokemonR.id > 251 && pokemonR.id <= 386){
                    pokemonS.Generaci_n__c = 3;
                }else if (pokemonR.id > 386 && pokemonR.id <= 493){
                    pokemonS.Generaci_n__c = 4;
                }else if (pokemonR.id > 493 && pokemonR.id <= 649){
                    pokemonS.Generaci_n__c = 5;
                }else if (pokemonR.id > 649 && pokemonR.id <= 721){
                    pokemonS.Generaci_n__c = 6;
                }else if (pokemonR.id > 721 && pokemonR.id <= 809){
                    pokemonS.Generaci_n__c = 7;
                }else if (pokemonR.id > 809 && pokemonR.id <= 898){
                    pokemonS.Generaci_n__c = 8;
                }
                
                for (Integer i = 0 ; i < pokemonR.types.size() ; i++)
                {
                    pokemonS.Tipo__c = pokemonS.Tipo__c == null ?  pokemonR.types[i].type.name : PokemonS.Tipo__c + ';'+ PokemonR.types[i].type.name;
                }                    

                System.debug(pokemonS);
                INSERT pokemonS;
             
                
            }
        } catch(Exception e) {
            System.debug(e.getMessage());
        }
        
        
    }
    public void finish(Database.BatchableContext bc){
       System.debug('El batch a terminado');
    }
}