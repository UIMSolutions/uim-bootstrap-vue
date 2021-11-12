module uim.bootstrap.vue.forms.custom.checkbox;

public import uim.bootstrap.vue;

class DBV5CustomCheckbox : DVUEComponent {
  this() {
      this
      .name("UimCustomCheckbox")
      .computed("classes()", `return ["custom-control", "custom-checkbox"];`)
      .template_(`<div :class="this.classes"><slot /></div>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CustomCheckbox");

unittest {
  assert(BV5CustomCheckbox.name == "UimCustomCheckbox");
  assert(BV5CustomCheckbox.name("test").name == "test");
}
