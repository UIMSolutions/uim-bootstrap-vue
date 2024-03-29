﻿module uim.bootstrap.vue.dropdowns.dropdown;

import uim.bootstrap.vue;

class DBV5Dropdown : DVUEComponent {
  this() {
    this
    .name("UimDropdown")
    .computed("classes()", `return ["dropdown"]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Dropdown");

unittest {
  assert(BV5Dropdown.name == "UimDropdown");
  assert(BV5Dropdown.name("test").name == "test");
}
/*
		_name = "BV5-dropdown";
		_props["dropDownId"] = "String";
		_props["label"] = "String";
		_props["color"] = "String";
		_props["items"] = "Array";
		_props["buttons"] = "Array";
		_render = initVueVars~
			jsIf("!this.dropdownId", "this.dropdownId='id'+Math.random();")~
			jsIf("this.label",
				jsIfElse("this.color",
					"content.push(createElement('BV5-dropdown-toggle', {attrs:{color:this.color}}, this.label));",
					"content.push(createElement('BV5-dropdown-toggle', this.label));"))~
				jsIfElse("this.items",
					"var itemElements=[];"~
					`for (var i = 0; i < this.items.length; i++) {`~
					`var item = this.items[i];`~
					"itemElements.push(createElement('BV5-dropdown-link', {attrs:{link:item.link, label:item.label}}));"~
					"}"~
					"content.push(createElement('BV5-dropdown-menu', itemElements));",  
					"content.push(this.$slots.default);")~
				createVueElement("div", ["dropdown"]);
*/