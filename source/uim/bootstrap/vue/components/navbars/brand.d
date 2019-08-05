module uim.bootstrap.vue.navbars.brand;

import uim.bootstrap.vue;

class DBV5NavbarBrand : DVUEComponent {
	this() {
		super(); 
		
		_name = "BV5-navbar-brand";
		_props["link"] = "String";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.link", "attributes.href=this.link;")~
				createVueElement("a", ["navbar-brand"]);
	}
}
auto BV5NavbarBrand() { return new DBV5NavbarBrand; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

