module uim.bootstrap.vue.listgroups.listgroup;

import uim.bootstrap.vue;

class DBV5ListGroup : DVUEComponent {
	this() {
		this
		.name("UimListGroup")
		.computed("classes()", `return ['list-group'];`)
    	.template_(`<ul :class="this.classes"><slot /></ul>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ListGroup");

unittest {
  assert(BV5ListGroup.name == "UimListGroup");
  assert(BV5ListGroup.name("test").name == "test");
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