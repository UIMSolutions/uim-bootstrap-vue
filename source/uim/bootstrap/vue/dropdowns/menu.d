module uim.bootstrap.vue.dropdowns.menu;

import uim.bootstrap.vue;

class DBV5DropdownMenu : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-dropdown-menu";
		_props["label"] = "String";
		_props["position"] = "String";
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				jsIf("this.label", "attributes.ariaLabelledby=this.label;")~
				jsIf("this.position", "classes.push('dropdown-menu-'+this.position);")~
				createVueElement("div", ["dropdown-menu"]);
	}
}
auto BV5DropdownMenu() { return new DBV5DropdownMenu; }

unittest {
		
	assert(BV5DropdownMenu.name == "BV5-dropdown-menu");
}	
