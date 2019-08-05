module uim.bootstrap.vue.navbars.togglericon;

import uim.bootstrap.vue;

class DBV5NavbarTogglerIcon : DVUEComponent {
	this() {
		super(); 
		
		_name = "BV5-navbar-toggler-icon";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("button", ["navbar-toggler-icon"]);
	}
}
auto BV5NavbarTogglerIcon() { return new DBV5NavbarTogglerIcon; }

unittest {
		
}	

