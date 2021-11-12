module uim.bootstrap.vue.forms.custom.radio;

public import uim.bootstrap.vue;

class DBV5CustomRadio : DVUEComponent {
  this() {
      this
      .name("UimCustomRadio")
      .computed("classes()", `return ["custom-control", "custom-radio"];`)
      .template_(`<div :class="this.classes"><slot /></div>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CustomRadio");

unittest {
  assert(BV5CustomRadio.name == "UimCustomRadio");
  assert(BV5CustomRadio.name("test").name == "test");
}
