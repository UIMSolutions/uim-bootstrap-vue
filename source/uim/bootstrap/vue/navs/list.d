module uim.bootstrap.vue.navs.list;

import uim.bootstrap.vue;

class DBV5NavList : DVUEComponent {
	this() {
      this
	  .name("UimNavList")
	  .computed("classes()", `return ["nav"];`)      
	  .template_(`<ul :class="this.classes"><slot /></ul>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"NavList");

unittest {
  assert(BV5NavList.name == "UimNavList");
  assert(BV5NavList.name("test").name == "test");
}

