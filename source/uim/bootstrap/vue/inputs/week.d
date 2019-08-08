module uim.bootstrap.vue.inputs.week;

import uim.bootstrap.vue;

class DBV5InputWeek : DVUEComponent {
	this() {
		this
		.name("UimInputWeek")
		.computed("classes()", `return [
			'form-control'];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputWeek");

unittest {
  assert(BV5InputWeek.name == "UimInputWeek");
  assert(BV5InputWeek.name("test").name == "test");
}	
