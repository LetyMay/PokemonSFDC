@isTest
public with sharing class PokemonControllerTest {
    @testSetup static void setup() {
        // Create common test accounts
        List<Pokemon__c> testPokemon = new List<Pokemon__c>();
        for(Integer i=1;i<=3;i++) {
            Pokemon__c pokemonT = new Pokemon__c();
            pokemonT.Name = 'TestPokemon '+i;
            pokemonT.PokeIndex__c = i;
            pokemonT.Altura__c='4 ft.';
            pokemonT.Peso__c ='42 lbs.';
            pokemonT.Foto_URL__c = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/'+i+'.png';
            pokemonT.Generaci_n__c =i;
            pokemonT.Tipo__c ='Normal';
          
            testPokemon.add(pokemonT);
        }
        for(Integer i=4;i<=6;i++) {
            Pokemon__c pokemonT = new Pokemon__c();
            pokemonT.Name = 'pokemonName '+i;
            pokemonT.PokeIndex__c = i;
            pokemonT.Altura__c='4 ft.';
            pokemonT.Peso__c ='42 lbs.';
            pokemonT.Foto_URL__c = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/'+i+'.png';
            pokemonT.Generaci_n__c =2;
            pokemonT.Tipo__c ='Water';
          
            testPokemon.add(pokemonT);
        }
        for(Integer i=7;i<=10;i++) {
            Pokemon__c pokemonT = new Pokemon__c();
            pokemonT.PokeIndex__c = i;
            pokemonT.Altura__c='4 ft.';
            pokemonT.Peso__c ='42 lbs.';
            pokemonT.Foto_URL__c = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/'+i+'.png';
            pokemonT.Generaci_n__c =8;
            pokemonT.Tipo__c ='Water';
          
            testPokemon.add(pokemonT);
        }
        testPokemon[6].Name ='Sobble';
        testPokemon[7].Name ='Drizzile';
        testPokemon[8].Name ='Inteleon';
        testPokemon[9].Name ='Chewtle';
    
        System.debug(testPokemon);
        insert testPokemon;  

    }
    @isTest static void deberiaMostrarAllCampos() {
        List<Pokemon__c>pokemonList = PokemonController.showAllPokemon();
        System.assertNotEquals(0,pokemonList.size());
        System.assertEquals(10,pokemonList.size());
        System.assertEquals(pokemonList[0].Name,'TestPokemon 1','EL nombre no coincide');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonList[0].Generaci_n__c,1,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonList[0].Tipo__c,'Normal','No es el tipo correcto');
        System.assertEquals(pokemonList[3].Name,'pokemonName 4','EL nombre no coincide');
        System.assertEquals(pokemonList[3].Generaci_n__c,2,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonList[3].Tipo__c,'Water','No es el tipo correcto');
        System.assertEquals(pokemonList[6].Name,'Sobble','EL nombre no coincide');
        System.assertEquals(pokemonList[6].Generaci_n__c,8,'No es la generación correcta');// si la comparación falla muestra el mensaje
        System.assertEquals(pokemonList[6].Foto_URL__c,'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png','No es el link correcto');
    }
    @isTest static void deberiaEncontrarTipo(){
         List<Pokemon__c>pokemonFiltrado= PokemonController.searchPokemon('water',null,null);
         System.assertNotEquals(0,pokemonFiltrado.size());
         System.assertEquals(7,pokemonFiltrado.size());
           //Verificar que los primero 6 elementos coincidan
        System.assertEquals(pokemonFiltrado[0].Name,'pokemonName 4','EL nombre no coincide');
        System.assertEquals(pokemonFiltrado[0].Tipo__c,'Water','EL tipo no coincide');
        System.assertEquals(pokemonFiltrado[6].Name,'Chewtle','EL nombre no coincide');
        System.assertEquals(pokemonFiltrado[6].Tipo__c,'Water','EL tipo no coincide');
        System.assertEquals(pokemonFiltrado[5].Name,'Inteleon','EL nombre no coincide');
        System.assertEquals(pokemonFiltrado[5].Tipo__c,'Water','EL tipo no coincide');
  
    }
   @isTest static void deberiaEncontrarNombre(){
        List<Pokemon__c>pokemonListNombre= PokemonController.searchPokemon(null,'Pokemon',null);
        System.assertNotEquals(0,pokemonListNombre.size());
        System.assertEquals(6,pokemonListNombre.size());
        //Verificar que los primero 6 elementos coincidan
        System.assertEquals(pokemonListNombre[0].Name,'TestPokemon 1','EL nombre no coincide');
        System.assertEquals(pokemonListNombre[1].Name,'TestPokemon 2','EL nombre no coincide');
        System.assertEquals(pokemonListNombre[4].Name,'pokemonName 5','EL nombre no coincide');
        System.assertEquals(pokemonListNombre[5].Name,'pokemonName 6','EL nombre no coincide');
    }
    @isTest static void deberiaEncontrarGeneracion(){
        List<Pokemon__c>pokemonFiltradoGeneracion= PokemonController.searchPokemon(null,null,'2');
        System.assertNotEquals(0,pokemonFiltradoGeneracion.size());
        System.assertEquals(4,pokemonFiltradoGeneracion.size());
        //Verificar que los primero 6 elementos coincidan
        System.assertEquals(pokemonFiltradoGeneracion[0].Name,'TestPokemon 2','EL nombre no coincide');
        System.assertEquals(pokemonFiltradoGeneracion[0].Generaci_n__c,2,'La generación no coincide');
        System.assertEquals(pokemonFiltradoGeneracion[1].Name,'pokemonName 4','EL nombre no coincide');
        System.assertEquals(pokemonFiltradoGeneracion[1].Generaci_n__c,2,'La generación no coincide');
        System.assertEquals(pokemonFiltradoGeneracion[2].Name,'pokemonName 5','EL nombre no coincide');
        System.assertEquals(pokemonFiltradoGeneracion[2].Generaci_n__c,2,'La generación no coincide');
        System.assertEquals(pokemonFiltradoGeneracion[3].Name,'pokemonName 6','EL nombre no coincide');
        System.assertEquals(pokemonFiltradoGeneracion[3].Generaci_n__c,2,'La generación no coincide');
    }
    @isTest static void deberiaEncontrarVariosFiltros(){
        List<Pokemon__c>pokemonFiltrado= PokemonController.searchPokemon('Water','Pokemonname','2');
        System.assertNotEquals(0,pokemonFiltrado.size());
        System.assertEquals(3,pokemonFiltrado.size());
        //Verificar que los primero 6 elementos coincidan
        System.assertEquals(pokemonFiltrado[0].Name,'pokemonName 4','EL nombre no coincide');
        System.assertEquals(pokemonFiltrado[1].Name,'pokemonName 5','EL nombre no coincide');
        System.assertEquals(pokemonFiltrado[2].Name,'pokemonName 6','EL nombre no coincide');
        System.assertEquals(pokemonFiltrado[0].Tipo__c,'Water','EL tipo no coincide');
        System.assertEquals(pokemonFiltrado[1].Tipo__c,'Water','EL tipo no coincide');
        System.assertEquals(pokemonFiltrado[2].Tipo__c,'Water','EL tipo no coincide');
        System.assertEquals(pokemonFiltrado[0].Generaci_n__c,2,'La generación no coincide');
        System.assertEquals(pokemonFiltrado[1].Generaci_n__c,2,'La generación no coincide');
        System.assertEquals(pokemonFiltrado[2].Generaci_n__c,2,'La generación no coincide');
    }
    @isTest static void deberiaEncontrarTipoyNombre(){
        List<Pokemon__c>pokemonFiltradoTN= PokemonController.searchPokemon('waTer','oN',null);
        System.assertNotEquals(0,pokemonFiltradoTN.size());
        System.assertEquals(4,pokemonFiltradoTN.size());
        //Verificar que los primero 6 elementos coincidan
        System.assertEquals(pokemonFiltradoTN[0].Name,'pokemonName 4','EL nombre no coincide');
        System.assertEquals(pokemonFiltradoTN[0].Tipo__c,'Water','EL tipo no coincide');
        System.assertEquals(pokemonFiltradoTN[3].Name,'Inteleon','EL nombre no coincide');
        System.assertEquals(pokemonFiltradoTN[3].Tipo__c,'Water','EL tipo no coincide');
      
    }
    @isTest static void deberiaEncontrarTipoyGeneracion(){
        List<Pokemon__c>pokemonFiltradoTG= PokemonController.searchPokemon('WATER',null,'8');
        System.assertNotEquals(0,pokemonFiltradoTG.size());
        System.assertEquals(4,pokemonFiltradoTG.size());
        //Verificar que los primero 6 elementos coincidan

        System.assertEquals(pokemonFiltradoTG[0].Name,'Sobble','EL nombre no coincide');
        System.assertEquals(pokemonFiltradoTG[0].Tipo__c,'Water','EL tipo no coincide');
        System.assertEquals(pokemonFiltradoTG[3].Name,'Chewtle','EL nombre no coincide');
        System.assertEquals(pokemonFiltradoTG[3].Tipo__c,'Water','EL tipo no coincide');
    }
    @isTest static void deberiaEncontrarGeneracionyNombre(){
        List<Pokemon__c>pokemonFiltradoGN= PokemonController.searchPokemon(null,'le','8');
        System.assertNotEquals(0,pokemonFiltradoGN.size());
        System.assertEquals(4,pokemonFiltradoGN.size());
        //Verificar que los primero 6 elementos coincidan

        System.assertEquals(pokemonFiltradoGN[1].Name,'Drizzile','EL nombre no coincide');
        System.assertEquals(pokemonFiltradoGN[1].Generaci_n__c,8,'La generación no coincide');
        System.assertEquals(pokemonFiltradoGN[2].Name,'Inteleon','EL nombre no coincide');
        System.assertEquals(pokemonFiltradoGN[2].Generaci_n__c,8,'La generación no coincide');
      
    }
    @isTest static void deberiaCaerEnException(){
     
        try {
            List<Pokemon__c>pokemonFiltradoGN= PokemonController.searchPokemon(null,null,'');
        } catch(Exception e) {
            System.assertEquals(e.getMessage(),'Ocurrio un error al realizar la constula: expecting a colon, found \'ORDER\'');
        }

        
    }


}