module uim.bootstrap.vue.dropdowns.header;

import uim.bootstrap.vue;

class DBV5DropdownHeader : DVUEComponent {
  this() {
    this
    .name("UimDropdownHeader")
    .computed("classes()", `return ["dropdown-header"]`)
    .template_(`<h6 :class="this.classes"><slot /></h6>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"DropdownHeader ");

unittest {
  assert(BV5DropdownDivider.name == "UimDropdownHeader");
  assert(BV5DropdownDivider.name("test").name == "test");
}

/*		_props["label"] = "String";
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("h6", ["dropdown-header"]);
*/