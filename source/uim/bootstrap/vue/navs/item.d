module uim.bootstrap.vue.navs.item;

import uim.bootstrap.vue;

class DBV5NavItem : DVUEComponent {
this() {
      this
	  .name("UimNavItem")
	  .computed("classes()", `return ["nav-item"];`)      
	  .template_(`<li :class="this.classes"><slot /></li>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"NavItem");

unittest {
  assert(BV5NavItem.name == "UimNavItemNavItem");
  assert(BV5NavItem.name("test").name == "test");
}
/*	this() {
		super();
		
		_name = "BV5-nav-item";
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				createVueElement("li", ["nav-item"]);
*/