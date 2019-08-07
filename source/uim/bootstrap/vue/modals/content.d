module uim.bootstrap.vue.modals.content;

import uim.bootstrap.vue;

class DBV5ModalContent: DVUEComponent {
	this() {
      this
	  .name("UimModalContent")
	  .computed("classes()", `return ["modal-content"];`)      
	  .template_(`<div :class="this.classes"><slot /></div>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ModalContent");

unittest {
  assert(BV5ModalContent.name == "UimModalContent");
  assert(BV5ModalContent.name("test").name == "test");
}
/*
		_name = "BV5-modal-content";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-content"]);
	}
}
*/
