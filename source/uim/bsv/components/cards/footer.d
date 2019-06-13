module uim.bsv.components.cards.footer;

import uim.bsv;

class DBSVCardFooter : DBSVComponent {
	this() {
		super();

		_name = "bsv-card-footer";
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				createVueElement("div", ["card-footer"]);
	}
}
auto BSVCardFooter() { return new DBSVCardFooter; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
