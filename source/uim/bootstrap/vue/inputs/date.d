module uim.bootstrap.vue.inputs.date;

import uim.bootstrap.vue;

class DBV5InputDate : DVUEComponent {
	this() {
		this
		.name("UimInputDate")
		.computed("classes()", `return [
			'form-control'];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputDate");

unittest {
  assert(BV5InputDate.name == "UimInputDate");
  assert(BV5InputDate.name("test").name == "test");
}	
