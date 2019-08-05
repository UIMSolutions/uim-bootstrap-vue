module uim.bootstrap.vue.breadcrumbs.item;

public import uim.bootstrap.vue;

class DBV5BreadcrumbItem : DVUEComponent {
  this() {
    this
    .name("UimBreadcrumbItem")
    .props("active", `{ type: Boolean, default: false }`)
    .computed("classes()", `return [
      "breadcrumb-item",
      this.active ? 'active' : ''
      ]`)
    .template_(`<li :class="this.classes" aria-current="page"><slot /></li>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"BreadcrumbItem");

unittest {
  assert(BV5BreadcrumbItem.name == "UimBreadcrumbItem");
  assert(BV5BreadcrumbItem.name("test").name == "test");
}

/*
		_props["label"] = "String";
		_props["active"] = "Boolean";
		_render = initVueVars~
			jsIf("this.active", "classes.push('active');")~ // attributes.ariaCurrent='page';")~
				jsIfElse("this.label", `content.push(this.label);`, "content.push(this.$slots.default);")~
				createVueElement("li", ["breadcrumb-item"]);
*/