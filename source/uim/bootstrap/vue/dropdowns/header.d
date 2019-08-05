module uim.bootstrap.vue.dropdowns.header;

import uim.bootstrap.vue;

class DBV5DropdownHeader : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-dropdown-header";
		_props["label"] = "String";
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("h6", ["dropdown-header"]);
	}
}
auto BV5DropdownHeader() { return new DBV5DropdownHeader; }

unittest {
	writeln("Testing ", __MODULE__);	
}	