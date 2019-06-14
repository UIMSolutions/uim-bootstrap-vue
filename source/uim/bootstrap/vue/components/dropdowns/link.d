module uim.bsv.components.dropdowns.link;

import uim.bsv;

class DBSVDropdownLink : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-link";
		_props["link"] = VUEProp("link", ["String"]);
		_props["label"] = VUEProp("label", ["String"]);
		_render = initVueVars~
				jsIf("this.link", "attributes.href=this.link;")~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("a", ["dropdown-item"]);
	}
}
auto BSVDropdownLink() { return new DBSVDropdownLink; }

unittest {
	writeln("Testing ", __MODULE__);	
	assert(BSVDropdownLink.name == "bsv-dropdown-item");
}	