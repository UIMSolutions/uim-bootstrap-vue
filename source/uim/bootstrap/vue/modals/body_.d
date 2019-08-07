module uim.bootstrap.vue.modals.body_;

import uim.bootstrap.vue;

class DBV5ModalBody: DVUEComponent {
	this() {
      this
	  .name("UimModalBody")
	  .computed("classes()", `return ["modal-body"];`)      
	  .template_(`<div :class="this.classes"><slot /></div>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ModalBody");

unittest {
  assert(BV5ModalBody.name == "UimModalBody");
  assert(BV5ModalBody.name("test").name == "test");
}

/*
		_name = "BV5-modal-body";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-body"]);
*/

