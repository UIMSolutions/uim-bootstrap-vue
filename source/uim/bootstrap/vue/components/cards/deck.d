module uim.bootstrap.vue.cards.deck;

import uim.bootstrap.vue;

class DBV5CardDeck : DVUEComponent {
	this() {
		super();

		_name = "BV5-card-deck";
		_render = ``~initVueVars~
			`tag='div';`~
				`classes.push('card-deck');`~
				`content=this.$slots.default;`~ 
				createVueElement;
	}
}
auto BV5CardDeck() { return new DBV5CardDeck; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
