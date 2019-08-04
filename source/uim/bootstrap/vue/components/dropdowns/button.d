module uim.bootstrap.vue.components.dropdowns.button;

import uim.bootstrap.vue;

class DBSVDropdownButton : DVUEComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-button";
		_props["label"] = "String";
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("button", ["dropdown-item"], ["type":"button"]);
	}
}
auto BSVDropdownButton() { return new DBSVDropdownButton; }

unittest {
	assert(BSVDropdownButton.name == "bsv-dropdown-item");
}	