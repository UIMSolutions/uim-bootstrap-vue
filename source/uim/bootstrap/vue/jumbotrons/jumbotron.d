module uim.bootstrap.vue.jumbotrons.jumbotron;

import uim.bootstrap.vue;

class DBV5Jumbotron : DVUEComponent {
	this() {
		this
		.name("UimJumbotron")
	    .props("fluid", `{ type: Boolean, default: false }`)
		.computed("classes()", `return [
			this.fluid ? 'jumbotron-fluid' : 'jumbotron'];`)
    	.template_(`<div :class="this.classes"><slot /></div>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Jumbotron");

unittest {
  assert(BV5Jumbotron.name == "UimJumbotron");
  assert(BV5Jumbotron.name("test").name == "test");
}	

/*
this() {
		super(); 
		
		_name = "BV5-jumbotron";
		_props["fluid"] = "Boolean";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.fluid", "classes.push('jumbotron-fluid');")~
				createVueElement("div", ["jumbotron"]);
*/