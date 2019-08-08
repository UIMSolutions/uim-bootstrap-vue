module uim.bootstrap.vue.inputs.submit;

import uim.bootstrap.vue;

class DBV5InputSubmit : DVUEComponent {
	this() {
		this
		.name("UimInputSubmit")
		.computed("classes()", `return [
			'form-control'];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputSubmit");

unittest {
  assert(BV5InputSubmit.name == "UimInputSubmit");
  assert(BV5InputSubmit.name("test").name == "test");
}	
