module uim.bootstrap.vue.inputs.url;

import uim.bootstrap.vue;

class DBV5InputUrl : DVUEComponent {
	this() {
		this
		.name("UimInputUrl")
		.computed("classes()", `return [
			'form-control'];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputUrl");

unittest {
  assert(BV5InputUrl.name == "UimInputUrl");
  assert(BV5InputUrl.name("test").name == "test");
}	
