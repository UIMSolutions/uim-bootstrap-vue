module uim.bootstrap.vue.components.dropdowns.divider;

import uim.bootstrap.vue;

class DBSVDropdownDivider : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-divider";
		_render = initVueVars~
				createVueElement("div", ["dropdown-divider"]);
	}
}
auto BSVDropdownDivider() { return new DBSVDropdownDivider; }

unittest {
	writeln("Testing ", __MODULE__);	
	assert(BSVDropdownDivider.name == "bsv-dropdown-header");
}	