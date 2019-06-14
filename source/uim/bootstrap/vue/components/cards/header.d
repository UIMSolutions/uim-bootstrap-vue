module uim.bsv.components.cards.header;

import uim.bsv;

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
