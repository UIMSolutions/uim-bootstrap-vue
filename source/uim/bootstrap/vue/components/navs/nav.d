module uim.bootstrap.vue.components.navs.nav;

import uim.bootstrap.vue;

class DBSVNav : DVUEComponent {
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
