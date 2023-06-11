public with sharing class Pokemon {
	public Integer height;	//4
	public Integer id;	//25
	public String name;	//pikachu
	public Integer order;	//35
	public cls_sprites sprites;
	public cls_types[] types;
	public Integer weight;	//60

	public class cls_sprites {
		//public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png
		// public String back_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/female/25.png
		// public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/25.png
		// public String back_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/female/25.png
		public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png
		//public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/female/25.png
		// public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/25.png
		// public String front_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/female/25.png
	// 	public cls_other other;
	// 	public cls_versions versions;
	 }
	// class cls_other {
	// 	public cls_dream_world dream_world;
	// 	public cls_home home;
	// 	public cls_official-artwork official-artwork;
	// }
	// class cls_dream_world {
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/25.svg
	// 	public cls_front_female front_female;
	// }
	// class cls_front_female {
	// }
	// class cls_home {
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/25.png
	// 	public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/female/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/25.png
	// 	public String front_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/female/25.png
	// }
	// class cls_official-artwork {
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png
	// }
	// class cls_versions {
	// 	public cls_generation-i generation-i;
	// 	public cls_generation-ii generation-ii;
	// 	public cls_generation-iii generation-iii;
	// 	public cls_generation-iv generation-iv;
	// 	public cls_generation-v generation-v;
	// 	public cls_generation-vi generation-vi;
	// 	public cls_generation-vii generation-vii;
	// 	public cls_generation-viii generation-viii;
	// }
	// class cls_generation-i {
	// 	public cls_red-blue red-blue;
	// 	public cls_yellow yellow;
	// }
	// class cls_red-blue {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/25.png
	// 	public String back_gray;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/gray/25.png
	// 	public String back_transparent;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/transparent/back/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/25.png
	// 	public String front_gray;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/gray/25.png
	// 	public String front_transparent;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/transparent/25.png
	// }
	// class cls_yellow {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/25.png
	// 	public String back_gray;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/gray/25.png
	// 	public String back_transparent;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/transparent/back/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/25.png
	// 	public String front_gray;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/gray/25.png
	// 	public String front_transparent;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/transparent/25.png
	// }
	// class cls_generation-ii {
	// 	public cls_crystal crystal;
	// 	public cls_gold gold;
	// 	public cls_silver silver;
	// }
	// class cls_crystal {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/25.png
	// 	public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/shiny/25.png
	// 	public String back_shiny_transparent;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/back/shiny/25.png
	// 	public String back_transparent;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/back/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/shiny/25.png
	// 	public String front_shiny_transparent;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/shiny/25.png
	// 	public String front_transparent;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/25.png
	// }
	// class cls_gold {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/25.png
	// 	public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/shiny/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/shiny/25.png
	// 	public String front_transparent;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/transparent/25.png
	// }
	// class cls_silver {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/25.png
	// 	public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/shiny/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/shiny/25.png
	// 	public String front_transparent;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/transparent/25.png
	// }
	// class cls_generation-iii {
	// 	public cls_emerald emerald;
	// 	public cls_firered-leafgreen firered-leafgreen;
	// 	public cls_ruby-sapphire ruby-sapphire;
	// }
	// class cls_emerald {
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/shiny/25.png
	// }
	// class cls_firered-leafgreen {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/25.png
	// 	public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/shiny/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/shiny/25.png
	// }
	// class cls_ruby-sapphire {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/25.png
	// 	public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/shiny/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/shiny/25.png
	// }
	// class cls_generation-iv {
	// 	public cls_diamond-pearl diamond-pearl;
	// 	public cls_heartgold-soulsilver heartgold-soulsilver;
	// 	public cls_platinum platinum;
	// }
	// class cls_diamond-pearl {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/25.png
	// 	public String back_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/female/25.png
	// 	public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/shiny/25.png
	// 	public String back_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/shiny/female/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/25.png
	// 	public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/female/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/shiny/25.png
	// 	public String front_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/shiny/female/25.png
	// }
	// class cls_heartgold-soulsilver {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/25.png
	// 	public String back_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/female/25.png
	// 	public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/shiny/25.png
	// 	public String back_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/shiny/female/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/25.png
	// 	public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/female/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/shiny/25.png
	// 	public String front_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/shiny/female/25.png
	// }
	// class cls_platinum {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/25.png
	// 	public String back_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/female/25.png
	// 	public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/shiny/25.png
	// 	public String back_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/shiny/female/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/25.png
	// 	public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/female/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/shiny/25.png
	// 	public String front_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/shiny/female/25.png
	// }
	// class cls_generation-v {
	// 	public cls_black-white black-white;
	// }
	// class cls_black-white {
	// 	public cls_animated animated;
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/25.png
	// 	public String back_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/female/25.png
	// 	public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/shiny/25.png
	// 	public String back_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/shiny/female/25.png
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/25.png
	// 	public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/female/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/shiny/25.png
	// 	public String front_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/shiny/female/25.png
	// }
	// class cls_animated {
	// 	public String back_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/25.gif
	// 	public String back_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/female/25.gif
	// 	public String back_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/shiny/25.gif
	// 	public String back_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/shiny/female/25.gif
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/25.gif
	// 	public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/female/25.gif
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/shiny/25.gif
	// 	public String front_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/shiny/female/25.gif
	// }
	// class cls_generation-vi {
	// 	public cls_omegaruby-alphasapphire omegaruby-alphasapphire;
	// 	public cls_x-y x-y;
	// }
	// class cls_omegaruby-alphasapphire {
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/25.png
	// 	public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/female/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/shiny/25.png
	// 	public String front_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/shiny/female/25.png
	// }
	// class cls_x-y {
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/25.png
	// 	public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/female/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/shiny/25.png
	// 	public String front_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/shiny/female/25.png
	// }
	// class cls_generation-vii {
	// 	public cls_icons icons;
	// 	public cls_ultra-sun-ultra-moon ultra-sun-ultra-moon;
	// }
	// class cls_icons {
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/icons/25.png
	// 	public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/icons/female/25.png
	// }
	// class cls_ultra-sun-ultra-moon {
	// 	public String front_default;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/25.png
	// 	public String front_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/female/25.png
	// 	public String front_shiny;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/shiny/25.png
	// 	public String front_shiny_female;	//https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/shiny/female/25.png
	// }
	// class cls_generation-viii {
	// 	public cls_icons icons;
	// }
	// class cls_stats {
	// 	public Integer base_stat;	//35
	// 	public Integer effort;	//0
	// 	public cls_stat stat;
	// }
	// class cls_stat {
	// 	public String name;	//hp
	// 	public String url;	//https://pokeapi.co/api/v2/stat/1/
	// }
	public class cls_types {
		public Integer slot;	//1
		public cls_type type;
	}
	public class cls_type {
		public String name;	//electric
		public String url;	//https://pokeapi.co/api/v2/type/13/
	}
	public static Pokemon parse(String json){
		return (Pokemon) System.JSON.deserialize(json, Pokemon.class);
	}
}