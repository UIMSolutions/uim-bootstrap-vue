module uim.bootstrap.vue.forms.group;

public import uim.bootstrap.vue;

class DBV5FormGroup : DVUEComponent {
  this() {
      this
      .name("UimFormGroup")
      .computed("classes()", `return ["form-group"]`)
      .template_(`<div :class="this.classes()"><slot /></form>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"FormGroup");

unittest {
  assert(BV5FormGroup.name == "UimFormGroup");
  assert(BV5FormGroup.name("test").name == "test");
}

/*
		_name = "BV5-form-group";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("div", ["form-group"]);
*/