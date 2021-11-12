module uim.bootstrap.vue.forms.check;

public import uim.bootstrap.vue;

class DBV5FormCheck : DVUEComponent {
  this() {
      this
      .name("UimFormCheck")
      .computed("classes()", `return ["form-check"];`)
      .template_(`<div :class="this.classes"><slot /></div>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"FormCheck");

unittest {
  assert(BV5FormCheck.name == "UimFormCheck");
  assert(BV5FormCheck.name("test").name == "test");
}

/*
		_name = "BV5-form-group";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("div", ["form-group"]);
*/