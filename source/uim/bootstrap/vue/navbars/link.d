module uim.bootstrap.vue.navs.link;

import uim.bootstrap.vue;

class DBV5NavLink : DVUEComponent {
	this() {
		this
		.name("UimNavLink")
	    .props("href", `{ type: String, default: "#" }`)
		.computed("classes()", `return ['nav-link'];`)
    	.template_(`<a :href="this.href" :class="this.classes"><slot /></a>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"NavLink");

unittest {
  assert(BV5NavLink.name == "UimNavLink");
  assert(BV5NavLink.name("test").name == "test");
}	
/*		_name = "BV5-nav-link";
		_props["link"] = "String";
		_props["label"] = "String";
		_props["active"] = "Boolean";
		_props["disabled"] = "Boolean";
		_render = initVueVars~
			jsIf("this.link", "attributes.href=this.link;")~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				jsIf("this.active", "classes.push('active');")~
				jsIf("this.disabled", "classes.push('disabled');")~
				createVueElement("a", ["nav-link"]);
*/