module uim.bootstrap.vue.dropdowns.menu;

import uim.bootstrap.vue;

class DBV5DropdownMenu : DVUEComponent {
	this() {
    this
    .name("UimDropdownMenu")
    .props("right", `{ type: Boolean }`)
    .computed("classes()", `return [
		"dropdown-menu",
		this.right ? 'dropdown-menu-right' : ''
		]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"DropdownMenu ");

unittest {
  assert(BV5DropdownMenu.name == "UimDropdownMenu");
  assert(BV5DropdownMenu.name("test").name == "test");
}
/*		
		_name = "BV5-dropdown-menu";
		_props["label"] = "String";
		_props["position"] = "String";
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				jsIf("this.label", "attributes.ariaLabelledby=this.label;")~
				jsIf("this.position", "classes.push('dropdown-menu-'+this.position);")~
				createVueElement("div", ["dropdown-menu"]);
	}
}
*/