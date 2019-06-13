module uim.bsv.components.dropdowns.header;

import uim.bsv;

class DBSVDropdownHeader : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-header";
		_props["label"] = VUEProp("label", ["String"]);
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("h6", ["dropdown-header"]);
	}
}
auto BSVDropdownHeader() { return new DBSVDropdownHeader; }

unittest {
	writeln("Testing ", __MODULE__);	
}	