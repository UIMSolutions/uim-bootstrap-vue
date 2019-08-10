module uim.bootstrap.vue.navbars.toggler;

import uim.bootstrap.vue;

class DBV5NavbarToggler : DVUEComponent {
	this() {
		this
		.name("UimNavbarToggler")
		.computed("classes()", `return ['navbar-toggler'];`)
    	.template_(`<button :class="this.classes"><slot /></button>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"NavbarToggler");

unittest {
  assert(BV5NavbarToggler.name == "UimNavbarToggler");
  assert(BV5NavbarToggler.name("test").name == "test");
}	
/*		_name = "BV5-navbar-toggler";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("button", ["navbar-toggler"]);
*/
