public with sharing class PokeApiConnect {
    public static String connectToApi(Integer numero) {
        String Respuesta;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://pokeapi.co/api/v2/pokemon/'+ numero);
        request.setHeader('Content-Type','application/json');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
       
            Respuesta = response.getBody();// conexion exitosa 
        }else{
            Respuesta = 'La API no está funcionando en este momento';
        }

        return Respuesta;
     
    }
}