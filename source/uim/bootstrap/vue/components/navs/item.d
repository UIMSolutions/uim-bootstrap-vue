module uim.bootstrap.vue.navs.item;

import uim.bootstrap.vue;

class DBV5NavItem : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-nav-item";
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				createVueElement("li", ["nav-item"]);
	}
}
auto BV5NavItem() { return new DBV5NavItem; }

unittest {
	writeln("Testing ", __MODULE__);	
}	