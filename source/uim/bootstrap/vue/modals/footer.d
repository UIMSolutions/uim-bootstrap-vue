module uim.bootstrap.vue.modals.footer;

import uim.bootstrap.vue;

class DBV5ModalFooter: DVUEComponent {
	this() {
      this
	  .name("UimModalFooter")
	  .computed("classes()", `return ["modal-footer"];`)      
	  .template_(`<div :class="this.classes"><slot /></div>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ModalFooter");

unittest {
  assert(BV5ModalFooter.name == "UimModalFooter");
  assert(BV5ModalFooter.name("test").name == "test");
}
/*

		_name = "BV5-modal-footer";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-footer"]);
	}
}*/