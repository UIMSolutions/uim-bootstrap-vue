module uim.bsv.components.cards.body_;

import uim.bsv;

class DBSVCardBody : DBSVComponent {
	this() {
		super();

		_name = "bsv-card-body";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				createVueElement("div", ["card-body"]);
	}
}
auto BSVCardBody() { return new DBSVCardBody; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
