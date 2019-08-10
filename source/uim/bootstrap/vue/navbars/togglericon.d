module uim.bootstrap.vue.navbars.togglericon;

import uim.bootstrap.vue;

class DBV5NavbarTogglerIcon : DVUEComponent {
this() {
		this
		.name("UimNavbarTogglerIcon")
		.computed("classes()", `return ['navbar-toggler-icon'];`)
    	.template_(`<button :class="this.classes"><slot /></button>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"NavbarTogglerIcon");

unittest {
  assert(BV5NavbarTogglerIcon.name == "UimNavbarTogglerIcon");
  assert(BV5NavbarTogglerIcon.name("test").name == "test");
}
/*
		_name = "BV5-navbar-toggler-icon";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("button", ["navbar-toggler-icon"]);
*/