module uim.bootstrap.vue.navbars.brand;

import uim.bootstrap.vue;

class DBV5NavbarBrand : DVUEComponent {
	this() {
		this
		.name("UimNavbarBrand")
	    .props("href", `{ type: String, default: "#" }`)
		.computed("classes()", `return ['navbar-brand'];`)
    	.template_(`<a :href="this.href" :class="this.classes"><slot /></a>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"NavbarBrand");

unittest {
  assert(BV5NavbarBrand.name == "UimNavbarBrand");
  assert(BV5NavbarBrand.name("test").name == "test");
}	
/*		_name = "BV5-navbar-brand";
		_props["link"] = "String";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.link", "attributes.href=this.link;")~
				createVueElement("a", ["navbar-brand"]);
*/