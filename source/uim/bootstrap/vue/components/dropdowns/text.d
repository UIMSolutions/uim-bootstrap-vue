module uim.bootstrap.vue.components.dropdowns.text;

import uim.bootstrap.vue;

class DBSVDropdownText : DVUEComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-text";
		_props["label"] = "String";
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("span", ["dropdown-item-text"]);
	}
}
auto BSVDropdownText() { return new DBSVDropdownText; }

unittest {
	assert(BSVDropdownText.name == "bsv-dropdown-item");
}	