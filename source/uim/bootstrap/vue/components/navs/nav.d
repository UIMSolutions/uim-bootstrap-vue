module uim.bsv.components.navs.nav;

import uim.bsv;

class DBSVNav : DBSVComponent {
	this() {
		super();
		_name = "bsv-nav";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("ul", ["nav"]);	}
}
auto BSVNav() { return new DBSVNav; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
