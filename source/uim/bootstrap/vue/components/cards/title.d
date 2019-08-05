module uim.bootstrap.vue.components.cards.title;

import uim.bootstrap.vue;

class DBV5CardTitle : DVUEComponent {
	this() {
		super();

		_name = "BV5-card-title";
		_render = initVueVars~
			`tag='h4';`~
				`classes.push('card-title');`~
				`content=this.$slots.default;`~ 
				createVueElement("h4");
	}
}
auto BV5CardTitle() { return new DBV5CardTitle; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
