module uim.bootstrap.vue.modals.modal;

import uim.bootstrap.vue;

class DBV5Modal: DVUEComponent {
	this() {
      this
	  .name("UimModal")
	  .computed("classes()", `return ["modal"];`)      
	  .template_(`<div :class="this.classes"><slot /></div>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Modal");

unittest {
  assert(BV5Modal.name == "UimModal");
  assert(BV5Modal.name("test").name == "test");
}
/*
		_name = "BV5-modal";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal"], ["tabindex":"-1", "role":"dialog"]);
*/
