﻿module uim.bootstrap.vue.components.dropdowns.dropdown;

import uim.bootstrap.vue;

class DBSVDropdown : DBSVComponent {
	this() {
		super();

		_name = "bsv-dropdown";
		_props["dropDownId"] = "String";
		_props["label"] = "String";
		_props["color"] = "String";
		_props["items"] = "Array";
		_props["buttons"] = "Array";
		_render = initVueVars~
			jsIf("!this.dropdownId", "this.dropdownId='id'+Math.random();")~
			jsIf("this.label",
				jsIfElse("this.color",
					"content.push(createElement('bsv-dropdown-toggle', {attrs:{color:this.color}}, this.label));",
					"content.push(createElement('bsv-dropdown-toggle', this.label));"))~
				jsIfElse("this.items",
					"var itemElements=[];"~
					`for (var i = 0; i < this.items.length; i++) {`~
					`var item = this.items[i];`~
					"itemElements.push(createElement('bsv-dropdown-link', {attrs:{link:item.link, label:item.label}}));"~
					"}"~
					"content.push(createElement('bsv-dropdown-menu', itemElements));",  
					"content.push(this.$slots.default);")~
				createVueElement("div", ["dropdown"]);
	}
}
auto BSVDropdown() { return new DBSVDropdown; }

unittest {
	writeln("Testing ", __MODULE__);	
}	