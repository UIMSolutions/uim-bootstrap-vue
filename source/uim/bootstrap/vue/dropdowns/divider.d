module uim.bootstrap.vue.dropdowns.divider;

import uim.bootstrap.vue;

class DBV5DropdownDivider : DVUEComponent {
  this() {
    this
    .name("UimDropdownDivider")
    .computed("classes()", `return ["dropdown-divider"]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"DropdownDivider ");

unittest {
  assert(BV5DropdownDivider.name == "UimDropdownDivider");
  assert(BV5DropdownDivider.name("test").name == "test");
}
/*		_name = "BV5-dropdown-divider";
		_render = initVueVars~
				createVueElement("div", ["dropdown-divider"]);
*/