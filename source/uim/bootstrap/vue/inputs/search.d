module uim.bootstrap.vue.inputs.search;

import uim.bootstrap.vue;

class DBV5InputSearch : DVUEComponent {
	this() {
		this
		.name("UimInputSearch")
		.computed("classes()", `return [
			'form-control'];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputSearch");

unittest {
  assert(BV5InputSearch.name == "UimInputSearch");
  assert(BV5InputSearch.name("test").name == "test");
}	
