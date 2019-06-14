module uim.bsv.components.dropdowns.text;

import uim.bsv;

class DBSVDropdownText : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-text";
		_props["label"] = VUEProp("label", ["String"]);
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("span", ["dropdown-item-text"]);
	}
}
auto BSVDropdownText() { return new DBSVDropdownText; }

unittest {
	writeln("Testing ", __MODULE__);	
	assert(BSVDropdownItem.name == "bsv-dropdown-item");
}	