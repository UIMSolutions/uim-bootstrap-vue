module uim.bootstrap.vue.dropdowns.text;

import uim.bootstrap.vue;

class DBV5DropdownText : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-dropdown-text";
		_props["label"] = "String";
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("span", ["dropdown-item-text"]);
	}
}
auto BV5DropdownText() { return new DBV5DropdownText; }

unittest {
	assert(BV5DropdownText.name == "BV5-dropdown-item");
}	