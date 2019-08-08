module uim.bootstrap.vue.inputgroups.inputgroup;

import uim.bootstrap.vue;

class DBV5InputGroup : DVUEComponent {
	this() {
		this
		.name("UimInputGroup")
		.computed("classes()", `return ['input-group'];`)
    	.template_(`<div :class="this.classes"></div>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputGroup");

unittest {
  assert(BV5InputGroup.name == "UimInputGroup");
  assert(BV5InputGroup.name("test").name == "test");
}	
