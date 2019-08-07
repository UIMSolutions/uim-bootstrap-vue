module uim.bootstrap.vue.modals.dialog;

import uim.bootstrap.vue;

class DBV5ModalDialog: DVUEComponent {
	this() {
      this
	  .name("UimModalDialog")
	  .computed("classes()", `return ["modal-dialog"];`)      
	  .template_(`<div role="document" :class="this.classes"><slot /></div>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ModalDialog");

unittest {
  assert(BV5ModalDialog.name == "UimModalDialog");
  assert(BV5ModalDialog.name("test").name == "test");
}
/*
		_name = "BV5-modal-dialog";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-dialog"], ["role":"document"]);
*/	

