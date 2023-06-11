public with sharing class obtenerPokemones {
    @AuraEnabled(cacheable=true)
    public static List<Pokemon__c> mostrarPokemon() {
        List<Pokemon__c> pokeList = [ SELECT
                                        Id,
                                        Name,
                                        Foto_URL__c,
                                        Tipo__c,
                                        Altura__c,
                                        Peso__c,
                                        Generaci_n__c
                                    FROM Pokemon__c   ];
        return pokeList;
    }
    // @AuraEnabled(Cacheable=true)
    // public static Pokemon__c[] searchPokemon(String searchTerm) {
    //     // Return all bears when no search term
    //     searchTerm = searchTerm.trim();
    //     if (searchTerm == '') {
    //         return showAllPokemon();
    //     }
    //     // Prepare query paramters
    //     searchTerm = '%' + searchTerm + '%';
    //     // Execute search query
    //     return [
    //         SELECT
    //             PokeIndex__c,
    //             Name,
    //             Foto_URL__c,
    //             Tipo__c,
    //             Altura__c,
    //             Peso__c,
    //             Generaci_n__c
    //         FROM Pokemon__c
    //         WHERE Name LIKE :searchTerm
    //         WITH SECURITY_ENFORCED
    //         ORDER BY Name
    //         LIMIT 50
    //     ];
    // }
}