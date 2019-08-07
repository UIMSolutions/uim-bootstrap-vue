module uim.bootstrap.vue.navs.nav;

import uim.bootstrap.vue;

class DBV5Nav : DVUEComponent {
	this() {
      this
	  .name("UimNav")
	  .computed("classes()", `return ["nav"];`)      
	  .template_(`<nav :class="this.classes"><slot /></nav>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Nav");

unittest {
  assert(BV5Nav.name == "UimNav");
  assert(BV5Nav.name("test").name == "test");
}
/*
		_name = "BV5-nav";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("ul", ["nav"]);	}
}
auto BV5Nav() { return new DBV5Nav; }
*/
