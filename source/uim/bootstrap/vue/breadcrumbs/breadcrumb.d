module uim.bootstrap.vue.breadcrumbs.breadcrumb;

public import uim.bootstrap.vue;

// The Breadcrumb allows users to see the current page and navigation path to that page.
class DBV5Breadcrumb : DVUEComponent {
  this() {
    this
    .name("UimBreadcrumb")
    .computed("classes()", `return ["breadcrumb"]`)
    .template_(`<nav aria-label="breadcrumb"><ol :class="this.classes"><slot /></ol></nav>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Breadcrumb");

unittest {
  assert(BV5Breadcrumb.name == "UimBreadcrumb");
  assert(BV5Breadcrumb.name("test").name == "test");
}