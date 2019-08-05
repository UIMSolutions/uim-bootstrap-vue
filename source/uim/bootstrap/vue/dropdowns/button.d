module uim.bootstrap.vue.dropdowns.button;

import uim.bootstrap.vue;

class DBV5DropdownButton : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-dropdown-button";
		_props["label"] = "String";
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("button", ["dropdown-item"], ["type":"button"]);
	}
}
auto BV5DropdownButton() { return new DBV5DropdownButton; }

unittest {
	assert(BV5DropdownButton.name == "BV5-dropdown-item");
}	