module uim.bootstrap.vue.dropdowns.divider;

import uim.bootstrap.vue;

class DBV5DropdownDivider : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-dropdown-divider";
		_render = initVueVars~
				createVueElement("div", ["dropdown-divider"]);
	}
}
auto BV5DropdownDivider() { return new DBV5DropdownDivider; }

unittest {
	writeln("Testing ", __MODULE__);	
	assert(BV5DropdownDivider.name == "BV5-dropdown-header");
}	