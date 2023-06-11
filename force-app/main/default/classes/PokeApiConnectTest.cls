@isTest
public with sharing class PokeApiConnectTest {
    @isTest public static void deberiaRecibirRespuesta() {
        //Conexión a la api HttpCalloutMock interface.(objeto simulado)
        SingleRequestMock respuestaFalsa = new SingleRequestMock(200,'OK','[{"Name":"Meowth"}]',null);
          // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
        Test.startTest();
        String resultado = PokeApiConnect.connectToApi(53);
        Test.stopTest();
        System.assertEquals('[{"Name":"Meowth"}]',resultado,'El assert no fue exitoso');// si la comparación falla muestra el mensaje
        System.assertNotEquals(null, resultado,'El assert no fue exitoso');// si la comparación es igual muestra el mensaje

    }
    
    @isTest public static void noDeberiaRecibirRespuesta(){
        SingleRequestMock respuestaFalsa = new SingleRequestMock(401,'ERROR','La API no está funcionando en este momento',null);
        Test.setMock(HttpCalloutMock.class, respuestaFalsa);
        Test.startTest();
        String resultado = PokeApiConnect.connectToApi(53);
        Test.stopTest();
        System.assertEquals('La API no está funcionando en este momento',resultado,'El assert no fue exitoso');// si la comparación falla muestra el mensaje
        System.assertNotEquals(null, resultado,'El assert no fue exitoso');// si la comparación es igual muestra el mensaje
    }
}