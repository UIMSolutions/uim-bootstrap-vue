module uim.bootstrap.vue.components.cards.deck;

import uim.bootstrap.vue;

class DBSVCardDeck : DBSVComponent {
	this() {
		super();

		_name = "bsv-card-deck";
		_render = ``~initVueVars~
			`tag='div';`~
				`classes.push('card-deck');`~
				`content=this.$slots.default;`~ 
				createVueElement;
	}
}
auto BSVCardDeck() { return new DBSVCardDeck; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
