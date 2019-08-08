module uim.bootstrap.vue.inputs.number;

import uim.bootstrap.vue;

class DBV5InputNumber : DVUEComponent {
	this() {
		this
		.name("UimInputNumber")
		.computed("classes()", `return [
			'form-control'];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputNumber");

unittest {
  assert(BV5InputNumber.name == "UimInputNumber");
  assert(BV5InputNumber.name("test").name == "test");
}	
