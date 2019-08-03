module uim.bootstrap.vue.components.cards.text;

import uim.bootstrap.vue;

class DBSVCardText : DBSVComponent {
	this() {
		super();

		_name = "bsv-card-text";
		_render = initVueVars~
				`classes.push('card-text');`~
				`content=this.$slots.default;`~ 
				createVueElement("p");
	}
}
auto BSVCardText() { return new DBSVCardText; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
