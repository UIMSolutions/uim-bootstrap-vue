module uim.bootstrap.vue.paginations.item;

import uim.bootstrap.vue;

class DBV5PageItem: DVUEComponent {
this() {
      this
	  .name("UimPageItem")
		.props("active", `{ type: Boolean, default: false }`)
		.props("disabled", `{ type: Boolean, default: false }`)
		.computed("classes()", `return [
			"page-item",
			    (this.active) && (!this.disabled) ? 'active' : '',
    			this.disabled ? 'disabled' : ''
				];`)      
	  .template_(`<li :class="this.classes"><slot /></li>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"PageItem");

unittest {
  assert(BV5PageItem.name == "UimPageItem");
  assert(BV5PageItem.name("test").name == "test");
}

/*	this() {
		super();
		
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				jsIf("this.active", "classes.push('active');")~
				jsIf("this.disabled", "classes.push('disabled');")~
				createVueElement("li", ["page-item"]);
'*/