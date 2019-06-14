module uim.bsv.components.dropdowns.button;

import uim.bsv;

class DBSVDropdownButton : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-button";
		_props["label"] = VUEProp("label", ["String"]);
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("button", ["dropdown-item"], ["type":"button"]);
	}
}
auto BSVDropdownButton() { return new DBSVDropdownButton; }

unittest {
	writeln("Testing ", __MODULE__);	
	assert(BSVDropdownItem.name == "bsv-dropdown-item");
}	