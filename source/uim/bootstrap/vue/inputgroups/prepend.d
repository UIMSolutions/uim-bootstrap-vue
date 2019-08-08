module uim.bootstrap.vue.inputgroups.prepend;

import uim.bootstrap.vue;

class DBV5InputGroupPrepend : DVUEComponent {
	this() {
		this
		.name("UimInputGroupPrepend")
		.computed("classes()", `return ['input-group-prepend'];`)
    	.template_(`<div :class="this.classes"></div>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputGroupPrepend");

unittest {
  assert(BV5InputGroupPrepend.name == "UimInputGroupPrepend");
  assert(BV5InputGroupPrepend.name("test").name == "test");
}	
