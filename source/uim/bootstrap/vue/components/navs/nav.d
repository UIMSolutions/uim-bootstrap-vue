module uim.bootstrap.vue.navs.nav;

import uim.bootstrap.vue;

class DBV5Nav : DVUEComponent {
	this() {
		super();
		_name = "BV5-nav";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("ul", ["nav"]);	}
}
auto BV5Nav() { return new DBV5Nav; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
