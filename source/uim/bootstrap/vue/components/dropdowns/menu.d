module uim.bootstrap.vue.components.dropdowns.menu;

import uim.bootstrap.vue;

class DBSVDropdownMenu : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-menu";
		_props["label"] = "String";
		_props["position"] = "String";
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				jsIf("this.label", "attributes.ariaLabelledby=this.label;")~
				jsIf("this.position", "classes.push('dropdown-menu-'+this.position);")~
				createVueElement("div", ["dropdown-menu"]);
	}
}
auto BSVDropdownMenu() { return new DBSVDropdownMenu; }

unittest {
	writeln("Testing ", __MODULE__);	
	assert(BSVDropdownMenu.name == "bsv-dropdown-menu");
}	
