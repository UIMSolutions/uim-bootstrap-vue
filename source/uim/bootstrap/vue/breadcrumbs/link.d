module uim.bootstrap.vue.breadcrumbs.link;

public import uim.bootstrap.vue;

class DBV5BreadcrumbLink : DVUEComponent {
  this() {
    this
    .name("UimBreadcrumbLink")
    .props("href", `{ type: String, default: '#' }`)
    .computed("classes()", `return [
    "breadcrumb-item"]`)
    .template_(`<li :class="this.classes" aria-current="page"><a href="this.href"><slot /></a></li>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"BreadcrumbLink");

unittest {
  assert(BV5BreadcrumbLink.name == "UimBreadcrumbLink");
  assert(BV5BreadcrumbLink.name("test").name == "test");
}
