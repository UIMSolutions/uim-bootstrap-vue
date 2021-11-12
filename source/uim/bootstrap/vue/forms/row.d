module uim.bootstrap.vue.forms.row;

public import uim.bootstrap.vue;

class DBV5FormRow : DVUEComponent {
  this() {
      this
      .name("UimFormRow")
      .computed("classes()", `return ["form-row"];`)
      .template_(`<div :class="this.classes"><slot /></div>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"FormRow");

unittest {
  assert(BV5FormRow.name == "UimFormRow");
  assert(BV5FormRow.name("test").name == "test");
}

/*
		_name = "BV5-form-group";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("div", ["form-group"]);
*/