module uim.bsv.components.dropdowns.menu;

import uim.bsv;

class DBSVDropdownMenu : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-menu";
		_props["label"] = VUEProp("label", ["String"]);
		_props["position"] = VUEProp("position", ["String"]);
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
