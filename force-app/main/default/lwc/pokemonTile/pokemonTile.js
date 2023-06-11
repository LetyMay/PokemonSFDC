import { LightningElement,api } from 'lwc';

export default class PokemonTile extends LightningElement {
  @api pokemon;
  @api
  colores = {
     gen1 : '#d2955d',
     gen2 : '#C08497',
     gen3 : '#6A706E',
     gen4 : '#73648A',
     gen5 : '#1A659E',
     gen6 : '#1b484f',
     gen7 : '#C83E4D',
     gen8 : '#2C5530'
  }
  imageTypes = {
    Bug: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Pok%C3%A9mon_Bug_Type_Icon.svg/120px-Pok%C3%A9mon_Bug_Type_Icon.svg.png",
    Dark: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Pok%C3%A9mon_Dark_Type_Icon.svg/120px-Pok%C3%A9mon_Dark_Type_Icon.svg.png",
    Dragon: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Pok%C3%A9mon_Dragon_Type_Icon.svg/120px-Pok%C3%A9mon_Dragon_Type_Icon.svg.png",
    Electric: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Pok%C3%A9mon_Electric_Type_Icon.svg/120px-Pok%C3%A9mon_Electric_Type_Icon.svg.png",
    Fairy: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Pok%C3%A9mon_Fairy_Type_Icon.svg/120px-Pok%C3%A9mon_Fairy_Type_Icon.svg.png",
    Fighting: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Pok%C3%A9mon_Fighting_Type_Icon.svg/120px-Pok%C3%A9mon_Fighting_Type_Icon.svg.png",
    Fire: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Pok%C3%A9mon_Fire_Type_Icon.svg/120px-Pok%C3%A9mon_Fire_Type_Icon.svg.png",
    Flying: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Pok%C3%A9mon_Flying_Type_Icon.svg/120px-Pok%C3%A9mon_Flying_Type_Icon.svg.png",
    Grass: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Pok%C3%A9mon_Grass_Type_Icon.svg/120px-Pok%C3%A9mon_Grass_Type_Icon.svg.png",
    Ground: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Pok%C3%A9mon_Ground_Type_Icon.svg/120px-Pok%C3%A9mon_Ground_Type_Icon.svg.png",
    Ghost: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pok%C3%A9mon_Ghost_Type_Icon.svg/120px-Pok%C3%A9mon_Ghost_Type_Icon.svg.png",
    Ice: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Pok%C3%A9mon_Ice_Type_Icon.svg/120px-Pok%C3%A9mon_Ice_Type_Icon.svg.png",
    Normal: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Pok%C3%A9mon_Normal_Type_Icon.svg/120px-Pok%C3%A9mon_Normal_Type_Icon.svg.png",
    Poison: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Pok%C3%A9mon_Poison_Type_Icon.svg/120px-Pok%C3%A9mon_Poison_Type_Icon.svg.png",
    Psychic: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Pok%C3%A9mon_Psychic_Type_Icon.svg/120px-Pok%C3%A9mon_Psychic_Type_Icon.svg.png",
    Rock: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Pok%C3%A9mon_Rock_Type_Icon.svg/120px-Pok%C3%A9mon_Rock_Type_Icon.svg.png",
    Steel:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Pok%C3%A9mon_Steel_Type_Icon.svg/120px-Pok%C3%A9mon_Steel_Type_Icon.svg.png",
    Water: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Pok%C3%A9mon_Water_Type_Icon.svg/120px-Pok%C3%A9mon_Water_Type_Icon.svg.png",
  }
  handleOpenRecordClick() {
    const selectEvent = new CustomEvent('pokemonview', {
      detail: this.pokemon.Id
    });
    this.dispatchEvent(selectEvent);
  }
  get getTitle(){
    return '#' + this.pokemon.PokeIndex__c;
  }
  get getTipo(){

    let temporalTipos = [];
    let index= this.pokemon.Tipo__c.indexOf(";");
    let tipo = this.pokemon.Tipo__c;

    if(index>0){
      let tipos =  tipo.split(";");
      tipos.forEach(item => {
        temporalTipos.push({type:item, img:this.imageTypes[item]});

      })
        
    }else{
      temporalTipos.push({type:tipo, img:this.imageTypes[tipo]});
    }


    return temporalTipos;
  }

  
  get textoGeneracion(){
    // eslint-disable-next-line default-case
    switch(this.pokemon.Generaci_n__c){
      case 1 : {
        return 'Primera';
      }
      case 2: {
        return 'Segunda';
      }
      case 3: {
        return 'Tercera';
      }
      case 4: {
        return 'Cuarta';
      }
      case 5: {
        return 'Quinta';
      }
      case 6: {
        return 'Sexta';
      }
      case 7: {
        return 'Septima';
      }
      case 8: {
        return 'Octava';
      }
    }
    return 0;
  }
  get getColorButton(){
    let colorButton = 'border: 1px solid ';
    // eslint-disable-next-line default-case
    switch(this.pokemon.Generaci_n__c){
      case 1 : {
        colorButton += this.colores.gen1 + ';'
        break;
      }
      case 2: {
          colorButton += this.colores.gen2 + ';'
          break;
      }
      case 3: {
          colorButton += this.colores.gen3 + ';'
          break;
      }
      case 4: {
        colorButton += this.colores.gen4 + ';'
        break;
      }
      case 5: {
        colorButton += this.colores.gen5 + ';'
        break;
      }
      case 6: {
        colorButton += this.colores.gen6 + ';'
        break;
      }
      case 7: {
        colorButton += this.colores.gen7 + ';'
        break;
      }
      case 8: {
        colorButton += this.colores.gen8 + ';'
        break;
      }
    }
    return colorButton;
  }

  get getColorGen(){
  let colorName = '';

      switch(this.pokemon.Generaci_n__c){
        case 1 : {
          colorName = 'background: ' + this.colores.gen1 + ';';
          break;
        }
        case 2: {
            colorName = 'background: ' + this.colores.gen2 + ';'
            break;
        }
        case 3: {
            colorName = 'background: ' + this.colores.gen3 + ';'
            break;
        }
        case 4: {
          colorName = 'background:  ' + this.colores.gen4 + ';'
          break;
        }
        case 5: {
          colorName = 'background: ' + this.colores.gen5 + ';'
          break;
        }
        case 6: {
          colorName = 'background: ' + this.colores.gen6 + ';'
          break;
        }
        case 7: {
          colorName = 'background: ' + this.colores.gen7 + ';'
          break;
        }
        case 8: {
          colorName = 'background: '+ this.colores.gen8 + ';'
          break;
        }
        default:
          /* code */
          break;
      }
      return colorName;
  }
  get getStyleCard(){
    let borderColor = 'border: 2px solid ';

      switch(this.pokemon.Generaci_n__c){
              case 1 : {
                borderColor += this.colores.gen1 + '; background: rgba(210, 149, 93, 0.1);'
                break;
              }
              case 2: {
                  borderColor += this.colores.gen2 + '; background: rgba(192, 76, 74, 0.1);'
                  break;
              }
              case 3: {
                  borderColor += this.colores.gen3 + '; background: rgba(188, 192, 74, 0.1);'
                  break;
              }
              case 4: {
                borderColor += this.colores.gen4 + '; background: rgba(144, 74, 192, 0.1);'
                break;
              }
              case 5: {
                borderColor += this.colores.gen5 + '; background: rgba(74, 188, 192, 0.1);'
                break;
              }
              case 6: {
                borderColor += this.colores.gen6 + '; background: rgba(27, 72, 79, 0.1);'
                break;
              }
              case 7: {
                borderColor += this.colores.gen7 + '; background: rgba(140, 30, 8, 0.1);'
                break;
              }
              case 8: {
                borderColor += this.colores.gen8 + '; background: rgba(27, 84, 4, 0.1);'
                break;
              }
            }
    return borderColor;      

  }

  
  get getBackgroundCard(){
    let colorBackground = '';
    switch(this.pokemon.Generaci_n__c){
      case 1 : {
        colorBackground = 'background: rgba(210, 149, 93, 0.1);';
        break;
      }
      case 2: {
        colorBackground = 'background: rgba(192, 76, 74, 0.1);';
        break;
      }
      case 3: {
        colorBackground = 'background: rgba(188, 192, 74, 0.1);';
        break;
      }
      case 4: {
        colorBackground = 'background: rgba(144, 74, 192, 0.1);';
        break;
      }
      case 5: {
        colorBackground = 'background: rgba(74, 188, 192, 0.1);';
        break;
      }
      case 6: {
        colorBackground = 'background: rgba(27, 72, 79, 0.1);';
        break;
      }
      case 7: {
        colorBackground = 'background: rgba(140, 30, 8, 0.1);';
        break;
      }
      case 8: {
        colorBackground = 'background: rgba(27, 84, 4, 0.1);';
        break;
      }
    }
    return colorBackground;
  }
}