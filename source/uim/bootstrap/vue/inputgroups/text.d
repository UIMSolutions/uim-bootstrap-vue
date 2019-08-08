module uim.bootstrap.vue.inputgroups.text;

import uim.bootstrap.vue;

class DBV5InputGroupText : DVUEComponent {
	this() {
		this
		.name("UimInputGroupText")
		.computed("classes()", `return ['input-group-text'];`)
    	.template_(`<span :class="this.classes"></span>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputGroupText");

unittest {
  assert(BV5InputGroupText.name == "UimInputGroupText");
  assert(BV5InputGroupText.name("test").name == "test");
}	
