module uim.bootstrap.vue.components.cards.header;

import uim.bootstrap.vue;

class DBSVCardHeader : DBSVComponent {
	this() {
		super();

		_name = "bsv-card-header";
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				createVueElement("div", ["card-header"]);
	}
}
auto BSVCardHeader() { return new DBSVCardHeader; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
