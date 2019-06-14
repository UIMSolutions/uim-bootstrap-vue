module uim.bsv.components.navbars.brand;

import uim.bsv;

class DBSVNavbarBrand : DBSVComponent {
	this() {
		super(); 
		
		_name = "bsv-navbar-brand";
		_props["link"] = VUEProp("link", ["String"]);
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.link", "attributes.href=this.link;")~
				createVueElement("a", ["navbar-brand"]);
	}
}
auto BSVNavbarBrand() { return new DBSVNavbarBrand; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

