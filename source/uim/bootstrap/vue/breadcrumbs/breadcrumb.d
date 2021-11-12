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

/*
		_name = "BV5-breadcrumb";
		_props["items"] = "Array";
		_render = initVueVars~
			"var cls = []; cls.push('breadcrumb');"~
			jsIfElse("this.items",
					"var itemElements=[];"~
					`for (var i = 0; i < this.items.length; i++) {`~
					`var item = this.items[i];`~
					jsIfElse("i < (this.items.length-1)", 
						"itemElements.push(createElement('BV5-breadcrumb-item', [createElement('a', {attrs:{href:item.link}}, item.label)]));",
						"itemElements.push(createElement('BV5-breadcrumb-item', {class:['active']}, item.label));")~
					"}"~
				"content.push(createElement('ol', {class:cls}, itemElements));",  
				"content.push(createElement('ol', {class:cls}, this.$slots.default));")~
				createVueElement("nav", ["ariaLabel":"breadcrumb"]);
*/