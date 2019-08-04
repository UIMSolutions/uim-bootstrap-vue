module uim.bootstrap.vue.components.navs.item;

import uim.bootstrap.vue;

class DBSVNavItem : DVUEComponent {
	this() {
		super();
		
		_name = "bsv-nav-item";
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				createVueElement("li", ["nav-item"]);
	}
}
auto BSVNavItem() { return new DBSVNavItem; }

unittest {
	writeln("Testing ", __MODULE__);	
}	