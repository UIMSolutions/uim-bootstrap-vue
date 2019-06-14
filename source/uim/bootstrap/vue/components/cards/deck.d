module uim.bsv.components.cards.deck;

import uim.bsv;

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
