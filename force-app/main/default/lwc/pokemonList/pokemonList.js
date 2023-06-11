import { NavigationMixin } from 'lightning/navigation';
import { LightningElement,api } from 'lwc';
import showAllPokemon from '@salesforce/apex/PokemonController.showAllPokemon';
import searchPokemon from '@salesforce/apex/PokemonController.searchPokemon';
import tituloImg from  '@salesforce/resourceUrl/tituloImg';
import pokebolapq from  '@salesforce/resourceUrl/pokebolapq';
import meowSad from  '@salesforce/resourceUrl/meowSad';
export default class PokemonList extends NavigationMixin(LightningElement) {
	
	@api pokemones
	totalResults;
	error;
	tipoPok=null;
	generacionPok=null;
	searchTerm=null;

	tituloImgUrl = tituloImg;
	pokebolapqUrl = pokebolapq;
	imgErrorUrl = meowSad;
	get opcionesTipo(){
		return [
			{ label: 'Todos', value: null },
            { label: 'Normal', value: 'normal' },
            { label: 'Fighting', value: 'fighting' },
			{ label: 'Flying', value: 'flying' },
			{ label: 'Poison', value: 'poison' },
			{ label: 'Ground', value: 'ground' },
			{ label: 'Rock', value: 'rock' },
			{ label: 'Bug', value: 'bug' },
			{ label: 'Ghost', value: 'ghost' },
			{ label: 'Steel', value: 'steel' },
			{ label: 'Fire', value: 'fire' },
			{ label: 'Water', value: 'water' },
			{ label: 'Grass', value: 'grass' },
			{ label: 'Electric', value: 'electric' },
			{ label: 'Psychic', value: 'psychic' },
			{ label: 'Ice', value: 'ice' },
			{ label: 'Dragon', value: 'dragon' },
			{ label: 'Dark', value: 'dark' },
			{ label: 'Fairy', value: 'fairy' }
		];
	}
	get opcionesGeneracion(){
		return [
			{ label: 'Todos', value: null },
			{ label: 'Primera', value: '1' },
			{ label: 'Segunda', value: '2' },
			{ label: 'Tercera', value: '3' },
			{ label: 'Cuarta', value: '4' },
			{ label: 'Quinta', value: '5' },
			{ label: 'Sexta', value: '6' },
			{ label: 'Septima', value: '7' },
			{ label: 'Octava', value: '8' },
		];
	}
	borrarFiltrado(){
		
		this.connectedCallback();
			
		this.tipoPok =  null;
		this.generacionPok = null;
		this.searchTerm = null;
	

	}
	handleChangeTipo(event) {
        this.tipoPok = event.detail.value;
		this.refreshData();
    }
	handleChangeGeneracion(event) {
		this.generacionPok = event.detail.value;
		this.refreshData();
	}
	connectedCallback() {
		
		showAllPokemon()
			.then(result => {
				this.pokemones = result;
				this.totalResults = this.pokemones.length;

			})
			.catch(error => {
				this.error = error;
				
			});
	}
	refreshData(){
		if(this.tipoPok == null && this.searchTerm == null && this.generacionPok == null){
			showAllPokemon()
			.then(result => {
				this.pokemones = result;
				this.totalResults = this.pokemones.length;
			})
			.catch(error => {
				this.error = error;
				console.log('Error: ' +this.error);
			});
		}else{
			searchPokemon({tipo : this.tipoPok, nombre: this.searchTerm,generacion: this.generacionPok})
			.then(result => {
				this.pokemones = result;
				this.totalResults = this.pokemones.length;
			})
			.catch(error => {
				this.error = error;
				console.log('error#'+JSON.stringify(error));
			});
		}
	}
	handleSearchTermChange(event) {
	// 	// Debouncing this method: do not update the reactive property as
	// 	// long as this function is being called within a delay of 300 ms.
	// 	// This is to avoid a very large number of Apex method calls.
		window.clearTimeout(this.delayTimeout);
		this.searchTerm = event.target.value;
		this.refreshData();

		this.delayTimeout = setTimeout(() => {
		
			this.searchTerm = searchTerm;
	 	}, 300);
	}
	get hasResults() {
		return (this.pokemones.length > 0);
	}
	
	//el handleview para que se pueda mostrar el registro del pokemon
	handlePokemonView(event) {
		// Get bear record id from pokeview event
		const pokemonId = event.detail;
		// Navigate to pokemon record page
		this[NavigationMixin.Navigate]({
			type: 'standard__recordPage',
			attributes: {
				recordId: pokemonId,
				objectApiName: 'Pokemon__c',
				actionName: 'view',
			},
		});
	}
}