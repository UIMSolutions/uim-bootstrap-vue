module uim.bootstrap.vue.navbars.navbar;

import uim.bootstrap.vue;

class DBV5Navbar : DVUEComponent {
	this() {
		this
		.name("UimNavbar")
		.props("light", `{ type: Boolean, default: false }`)
		.props("dark", `{ type: Boolean, default: false }`)
		.computed("classes()", `return ['navbar',
		    this.light ? 'navbar-light' : '',
		    this.dark ? 'navbar-dark' : ''
		];`)
    	.template_(`<nav :class="this.classes"><slot /></nav>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Navbar");

unittest {
  assert(BV5Navbar.name == "UimNavbar");
  assert(BV5Navbar.name("test").name == "test");
}	

/*		_props["dark"] = "Boolean";
		_props["light"] = "Boolean";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.light", "classes.push(this.light)")~
				jsIf("this.dark", "classes.push(this.dark)")~
				createVueElement("nav", ["navbar"]);
*/