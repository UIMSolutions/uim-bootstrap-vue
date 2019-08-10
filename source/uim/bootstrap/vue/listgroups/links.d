module uim.bootstrap.vue.listgroups.links;

import uim.bootstrap.vue;

class DBV5ListGroupLinks : DVUEComponent {
	this() {
		this
		.name("UimListGroupLinks")
		.computed("classes()", `return ['list-group'];`)
    	.template_(`<div :class="this.classes"><slot /></div>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ListGroupLinks");

unittest {
  assert(BV5ListGroupLinks.name == "UimListGroupLinks");
  assert(BV5ListGroupLinks.name("test").name == "test");
}	
