module uim.bsv.components.dropdowns.divider;

import uim.bsv;

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