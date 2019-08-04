module uim.bootstrap.vue.components.cards.body_;

import uim.bootstrap.vue;

class DBSVCardBody : DVUEComponent {
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
