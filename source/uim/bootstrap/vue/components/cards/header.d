module uim.bootstrap.vue.components.cards.header;

import uim.bootstrap.vue;

class DBV5CardHeader : DVUEComponent {
	this() {
		super();

		_name = "BV5-card-header";
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				createVueElement("div", ["card-header"]);
	}
}
auto BV5CardHeader() { return new DBV5CardHeader; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
