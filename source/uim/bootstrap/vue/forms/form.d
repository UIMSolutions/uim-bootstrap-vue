module uim.bootstrap.vue.forms.form;

public import uim.bootstrap.vue;

class DBV5Form : DVUEComponent {
  this() {
      this
      .name("UimForm")
      .template_(`<form><slot /></form>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Form");

unittest {
  assert(BV5Form.name == "UimForm");
  assert(BV5Form.name("test").name == "test");
}

/*
		_name = "BV5-form";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("form");
*/