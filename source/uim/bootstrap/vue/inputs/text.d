module uim.bootstrap.vue.inputs.text;

import uim.bootstrap.vue;

class DBV5InputText : DVUEComponent {
	this() {
		this
		.name("UimInputText")
		.computed("classes()", `return [
			'form-control'];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputText");

unittest {
  assert(BV5InputText.name == "UimInputText");
  assert(BV5InputText.name("test").name == "test");
}	
