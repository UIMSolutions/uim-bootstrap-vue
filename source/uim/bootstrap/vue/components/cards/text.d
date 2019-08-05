module uim.bootstrap.vue.components.cards.text;

import uim.bootstrap.vue;

class DBV5CardText : DVUEComponent {
	this() {
		super();

		_name = "BV5-card-text";
		_render = initVueVars~
				`classes.push('card-text');`~
				`content=this.$slots.default;`~ 
				createVueElement("p");
	}
}
auto BV5CardText() { return new DBV5CardText; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
