module uim.bootstrap.vue.modals.header;

import uim.bootstrap.vue;

class DBV5ModalHeader: DVUEComponent {
	this() {
      this
	  .name("UimModalHeader")
	  .computed("classes()", `return ["modal-header"];`)      
	  .template_(`<div :class="this.classes"><slot /></div>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ModalHeader");

unittest {
  assert(BV5ModalHeader.name == "UimModalHeader");
  assert(BV5ModalHeader.name("test").name == "test");
}
/*
		_name = "BV5-modal-header";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-header"]);
	}
}
*/

