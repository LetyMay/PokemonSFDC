import { LightningElement,api,wire} from 'lwc';
import { getRecord,getFieldValue } from 'lightning/uiRecordApi';
import Foto_URL__c from '@salesforce/schema/Pokemon__c.Foto_URL__c';
export default class MostrarImagen extends LightningElement {
    @api recordId;
    @wire(getRecord, { recordId: '$recordId', fields: [Foto_URL__c] })
    pokemon;

    get pokemonImagen(){
        return getFieldValue(this.pokemon.data,Foto_URL__c);
    }
}