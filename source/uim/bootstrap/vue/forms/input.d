module uim.bootstrap.vue.forms.input;

public import uim.bootstrap.vue;

class DBV5FormInput : DVUEComponent {
  this() {
      this
      .name("UimFormInput")
      .props("size", `{ type: String, default: "normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0 }`)
      .computed("classes()", `return [
      "form-control",
      this.size !== "normal" ? 'form-control-'+this.size : ""];`)
      .template_(`<input :class="this.classes">`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"FormInput");

unittest {
  assert(BV5FormInput.name == "UimFormInput");
  assert(BV5FormInput.name("test").name == "test");
}

/*
		_name = "BV5-form-group";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("div", ["form-group"]);
*/