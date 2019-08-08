module uim.bootstrap.vue.inputgroups.append;

import uim.bootstrap.vue;

class DBV5InputGroupAppend : DVUEComponent {
	this() {
		this
		.name("UimInputGroupAppend")
		.computed("classes()", `return ['input-group-append'];`)
    	.template_(`<div :class="this.classes"></div>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputGroupAppend");

unittest {
  assert(BV5InputGroupAppend.name == "UimInputGroupAppend");
  assert(BV5InputGroupAppend.name("test").name == "test");
}	
