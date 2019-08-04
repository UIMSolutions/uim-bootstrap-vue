module uim.bootstrap.vue.components.cards.footer;

import uim.bootstrap.vue;

class DBSVCardFooter : DVUEComponent {
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
