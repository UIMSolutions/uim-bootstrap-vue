module uim.bootstrap.vue.components.dropdowns.link;

import uim.bootstrap.vue;

class DBSVDropdownLink : DVUEComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-link";
		_props["link"] = "String";
		_props["label"] = "String";
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