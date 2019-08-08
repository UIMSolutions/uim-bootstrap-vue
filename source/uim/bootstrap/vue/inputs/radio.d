module uim.bootstrap.vue.inputs.radio;

import uim.bootstrap.vue;

class DBV5InputRadio : DVUEComponent {
	this() {
		this
		.name("UimInputRadio")
		.computed("classes()", `return [
			'form-control'];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputRadio");

unittest {
  assert(BV5InputRadio.name == "UimInputRadio");
  assert(BV5InputRadio.name("test").name == "test");
}	
