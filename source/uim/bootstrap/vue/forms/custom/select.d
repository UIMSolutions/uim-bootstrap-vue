module uim.bootstrap.vue.forms.custom.select;

public import uim.bootstrap.vue;

class DBV5CustomSelect : DVUEComponent {
  this() {
      this
      .name("UimCustomSelect")
      .computed("classes()", `return ["custom-select"];`)
      .template_(`<select :class="this.classes"><slot /></select>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CustomSelect");

unittest {
  assert(BV5CustomSelect.name == "UimCustomSelect");
  assert(BV5CustomSelect.name("test").name == "test");
}
