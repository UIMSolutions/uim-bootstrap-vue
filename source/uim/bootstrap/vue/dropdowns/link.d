module uim.bootstrap.vue.dropdowns.link;

import uim.bootstrap.vue;

class DBV5DropdownLink : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-dropdown-link";
		_props["link"] = "String";
		_props["label"] = "String";
		_render = initVueVars~
				jsIf("this.link", "attributes.href=this.link;")~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("a", ["dropdown-item"]);
	}
}
auto BV5DropdownLink() { return new DBV5DropdownLink; }

unittest {
		
	assert(BV5DropdownLink.name == "BV5-dropdown-item");
}	