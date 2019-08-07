module uim.bootstrap.vue.modals.title;

import uim.bootstrap.vue;

class DBV5ModalTitle: DVUEComponent {
	this() {
      this
	  .name("UimModalTitle")
	  .computed("classes()", `return ["modal-title"];`)      
	  .template_(`<h5 :class="this.classes"><slot /></h5>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ModalTitle");

unittest {
  assert(BV5ModalTitle.name == "UimModalTitle");
  assert(BV5ModalTitle.name("test").name == "test");
}
/*
		_name = "BV5-modal-title";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-title"]);
*/	

