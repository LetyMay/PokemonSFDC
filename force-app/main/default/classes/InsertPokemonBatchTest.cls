@isTest
public with sharing class InsertPokemonBatchTest {
    public static List<Pokemon__c>pokemonList;
    static{
        pokemonList = new List<Pokemon__c>();
        pokemonList.add(new Pokemon__c());
    }
    @isTest
    static  void deberiaInsertarPrimeraGeneracion() {
        SingleRequestMock respuestaFalsa = new SingleRequestMock(200,
                                                                'OK',
                                                                '{"height":4,"id":52,"name":"meowth","sprites": {"front_default":"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/52.png"},"types": [{"slot":1, "type":{"name":"normal","url":"https://pokeapi.co/api/v2/type/1/"}}],"weight":42}',
                                                                null);
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
        Test.startTest();
        InsertPokemonBatch  pokemonBatch = new InsertPokemonBatch(pokemonList);
        Database.executeBatch(pokemonBatch);

        Test.stopTest();
        List<Pokemon__c>pokemonListTest =[SELECT Name,Generaci_n__c,Altura__c,Foto_URL__c,PokeIndex__c,Peso__c,Tipo__c 
                                        FROM Pokemon__c];
        
        System.assertEquals(pokemonListTest[0].Name,'Meowth','EL nombre no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Generaci_n__c,1,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Altura__c,'4 ft.','No es la altura correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Peso__c,'42 lbs.','No es el peso correcto');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Tipo__c,'Normal','No es el tipo correcto');
        System.assertEquals(pokemonListTest[0].Foto_URL__c,'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/52.png','No es el link correcto');
    
    }
    @isTest
    static  void deberiaInsertarSegundaGeneracion() {
        SingleRequestMock respuestaFalsa = new SingleRequestMock(200,
                                                                'OK',
                                                                '{"height":9,"id":152,"name":"chikorita","sprites": {"front_default":"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/152.png"},"types": [{"slot":1, "type":{"name":"grass","url":"https://pokeapi.co/api/v2/type/1/"}}],"weight":64}',
                                                                null);
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
        Test.startTest();
        InsertPokemonBatch  pokemonBatch = new InsertPokemonBatch(pokemonList);
        Database.executeBatch(pokemonBatch);

        Test.stopTest();
        List<Pokemon__c>pokemonListTest =[SELECT Name,Generaci_n__c,Altura__c,Foto_URL__c,PokeIndex__c,Peso__c,Tipo__c 
                                        FROM Pokemon__c];
        System.assertEquals(pokemonListTest[0].PokeIndex__c,152,'EL id no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Name,'Chikorita','EL nombre no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Generaci_n__c,2,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Altura__c,'9 ft.','No es la altura correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Peso__c,'64 lbs.','No es el peso correcto');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Tipo__c,'Grass','No es el tipo correcto');
        System.assertEquals(pokemonListTest[0].Foto_URL__c,'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/152.png','No es el link correcto');
    }
    @isTest
    static  void deberiaInsertarTerceraGeneracion() {
        SingleRequestMock respuestaFalsa = new SingleRequestMock(200,
                                                                'OK',
                                                                '{"height":5,"id":252,"name":"treecko","sprites": {"front_default":"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/252.png"},"types": [{"slot":1, "type":{"name":"grass","url":"https://pokeapi.co/api/v2/type/1/"}}],"weight":50}',
                                                                null);
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
        Test.startTest();
        InsertPokemonBatch  pokemonBatch = new InsertPokemonBatch(pokemonList);
        Database.executeBatch(pokemonBatch);

        Test.stopTest();
        List<Pokemon__c>pokemonListTest =[SELECT Name,Generaci_n__c,Altura__c,Foto_URL__c,PokeIndex__c,Peso__c,Tipo__c 
                                        FROM Pokemon__c];
        System.assertEquals(pokemonListTest[0].PokeIndex__c,252,'EL id no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Name,'Treecko','EL nombre no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Generaci_n__c,3,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Altura__c,'5 ft.','No es la altura correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Peso__c,'50 lbs.','No es el peso correcto');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Tipo__c,'Grass','No es el tipo correcto');
        System.assertEquals(pokemonListTest[0].Foto_URL__c,'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/252.png','No es el link correcto');
    }
    @isTest
    static  void deberiaInsertarCuartaGeneracion() {
        SingleRequestMock respuestaFalsa = new SingleRequestMock(200,
                                                                'OK',
                                                                '{"height":4,"id":387,"name":"turtwig","sprites": {"front_default":"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/387.png"},"types": [{"slot":1, "type":{"name":"grass","url":"https://pokeapi.co/api/v2/type/1/"}}],"weight":102}',
                                                                null);
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
        Test.startTest();
        InsertPokemonBatch  pokemonBatch = new InsertPokemonBatch(pokemonList);
        Database.executeBatch(pokemonBatch);

        Test.stopTest();
        List<Pokemon__c>pokemonListTest =[SELECT Name,Generaci_n__c,Altura__c,Foto_URL__c,PokeIndex__c,Peso__c,Tipo__c 
                                        FROM Pokemon__c];
        System.assertEquals(pokemonListTest[0].PokeIndex__c,387,'EL id no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Name,'Turtwig','EL nombre no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Generaci_n__c,4,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Altura__c,'4 ft.','No es la altura correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Peso__c,'102 lbs.','No es el peso correcto');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Tipo__c,'Grass','No es el tipo correcto');
        System.assertEquals(pokemonListTest[0].Foto_URL__c,'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/387.png','No es el link correcto');
    }
    @isTest
    static  void deberiaInsertarQuintaGeneracion() {
        SingleRequestMock respuestaFalsa = new SingleRequestMock(200,
                                                                'OK',
                                                                '{"height":5,"id":501,"name":"oshawott","sprites": {"front_default":"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/501.png"},"types": [{"slot":1, "type":{"name":"water","url":"https://pokeapi.co/api/v2/type/1/"}}],"weight":59}',
                                                                null);
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
        Test.startTest();
        InsertPokemonBatch  pokemonBatch = new InsertPokemonBatch(pokemonList);
        Database.executeBatch(pokemonBatch);

        Test.stopTest();
        List<Pokemon__c>pokemonListTest =[SELECT Name,Generaci_n__c,Altura__c,Foto_URL__c,PokeIndex__c,Peso__c,Tipo__c 
                                        FROM Pokemon__c];
        System.assertEquals(pokemonListTest[0].PokeIndex__c,501,'EL id no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Name,'Oshawott','EL nombre no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Generaci_n__c,5,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Altura__c,'5 ft.','No es la altura correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Peso__c,'59 lbs.','No es el peso correcto');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Tipo__c,'Water','No es el tipo correcto');
        System.assertEquals(pokemonListTest[0].Foto_URL__c,'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/501.png','No es el link correcto');
    }
    @isTest
    static  void deberiaInsertarSextaGeneracion() {
        SingleRequestMock respuestaFalsa = new SingleRequestMock(200,
                                                                'OK',
                                                                '{"height":4,"id":653,"name":"fennekin","sprites": {"front_default":"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/653.png"},"types": [{"slot":1, "type":{"name":"fire","url":"https://pokeapi.co/api/v2/type/1/"}}],"weight":94}',
                                                                null);
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
        Test.startTest();
        InsertPokemonBatch  pokemonBatch = new InsertPokemonBatch(pokemonList);
        Database.executeBatch(pokemonBatch);

        Test.stopTest();
        List<Pokemon__c>pokemonListTest =[SELECT Name,Generaci_n__c,Altura__c,Foto_URL__c,PokeIndex__c,Peso__c,Tipo__c 
                                        FROM Pokemon__c];
        System.assertEquals(pokemonListTest[0].PokeIndex__c,653,'EL id no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Name,'Fennekin','EL nombre no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Generaci_n__c,6,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Altura__c,'4 ft.','No es la altura correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Peso__c,'94 lbs.','No es el peso correcto');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Tipo__c,'Fire','No es el tipo correcto');
        System.assertEquals(pokemonListTest[0].Foto_URL__c,'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/653.png','No es el link correcto');
    }
    @isTest
    static  void deberiaInsertarSeptimaGeneracion() {
        SingleRequestMock respuestaFalsa = new SingleRequestMock(200,
                                                                'OK',
                                                                '{"height":4,"id":725,"name":"litten","sprites": {"front_default":"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/725.png"},"types": [{"slot":1, "type":{"name":"fire","url":"https://pokeapi.co/api/v2/type/1/"}}],"weight":43}',
                                                                null);
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
        Test.startTest();
        InsertPokemonBatch  pokemonBatch = new InsertPokemonBatch(pokemonList);
        Database.executeBatch(pokemonBatch);

        Test.stopTest();
        List<Pokemon__c>pokemonListTest =[SELECT Name,Generaci_n__c,Altura__c,Foto_URL__c,PokeIndex__c,Peso__c,Tipo__c 
                                        FROM Pokemon__c];
        System.assertEquals(pokemonListTest[0].PokeIndex__c,725,'EL id no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Name,'Litten','EL nombre no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Generaci_n__c,7,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Altura__c,'4 ft.','No es la altura correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Peso__c,'43 lbs.','No es el peso correcto');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Tipo__c,'Fire','No es el tipo correcto');
        System.assertEquals(pokemonListTest[0].Foto_URL__c,'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/725.png','No es el link correcto');
    }
    @isTest
    static  void deberiaInsertarOctavaGeneracion() {
        SingleRequestMock respuestaFalsa = new SingleRequestMock(200,
                                                                'OK',
                                                                '{"height":6,"id":852,"name":"clobbopus","sprites": {"front_default":"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/852.png"},"types": [{"slot":1, "type":{"name":"fighting","url":"https://pokeapi.co/api/v2/type/1/"}}],"weight":40}',
                                                                null);
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
        Test.startTest();
        InsertPokemonBatch  pokemonBatch = new InsertPokemonBatch(pokemonList);
        Database.executeBatch(pokemonBatch);

        Test.stopTest();
        List<Pokemon__c>pokemonListTest =[SELECT Name,Generaci_n__c,Altura__c,Foto_URL__c,PokeIndex__c,Peso__c,Tipo__c 
                                        FROM Pokemon__c];
        System.assertEquals(pokemonListTest[0].PokeIndex__c,852,'EL id no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Name,'Clobbopus','EL nombre no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Generaci_n__c,8,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Altura__c,'6 ft.','No es la altura correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Peso__c,'40 lbs.','No es el peso correcto');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonListTest[0].Tipo__c,'Fighting','No es el tipo correcto');
        System.assertEquals(pokemonListTest[0].Foto_URL__c,'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/852.png','No es el link correcto');
    }
    @isTest
    static void noDeberiaInsertarRegistros(){
         SingleRequestMock respuestaFalsa = new SingleRequestMock(401,
                                                                'ERROR',
                                                                'La API no está funcionando en este momento',
                                                                null);
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
      
        Test.startTest();
        InsertPokemonBatch  pokemonBatch = new InsertPokemonBatch(pokemonList);
      	Database.executeBatch(pokemonBatch);
        Test.stopTest();
      

        List<Pokemon__c>pokemonListTest =[SELECT id,Name FROM Pokemon__c];
        System.assertEquals(0,pokemonListTest.size(),'No deberia insertar registros');
       
        

       
    
}

}