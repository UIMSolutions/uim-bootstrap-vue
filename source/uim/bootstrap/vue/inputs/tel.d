module uim.bootstrap.vue.inputs.tel;

import uim.bootstrap.vue;

class DBV5InputTel : DVUEComponent {
	this() {
		this
		.name("UimInputTel")
		.computed("classes()", `return [
			'form-control'];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputTel");

unittest {
  assert(BV5InputTel.name == "UimInputTel");
  assert(BV5InputTel.name("test").name == "test");
}	
