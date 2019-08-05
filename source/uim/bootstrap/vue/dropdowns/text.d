module uim.bootstrap.vue.dropdowns.itemtext;

import uim.bootstrap.vue;

class DBV5DropdownItemText : DVUEComponent {
  this() {
    this
    .name("UimDropdownItemText")
    .computed("classes()", `return ["dropdown-item-text"]`)
    .template_(`<span :class="this.classes"><slot /></span>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"DropdownItemText");

unittest {
  assert(BV5DropdownItemText.name == "UimDropdownItemText");
  assert(BV5DropdownItemText.name("test").name == "test");
}

/*		_name = "BV5-dropdown-text";
		_props["label"] = "String";
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("span", ["dropdown-item-text"]);*/
