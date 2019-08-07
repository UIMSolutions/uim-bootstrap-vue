module uim.bootstrap.vue.forms.select;

public import uim.bootstrap.vue;

class DBV5FormSelect : DVUEComponent {
  this() {
      this
      .name("UimFormSelect")
      .computed("classes()", `return ["form-control"];`)
      .template_(`<select :class="this.classes"><slot /></select>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"FormSelect");

unittest {
  assert(BV5FormSelect.name == "UimFormSelect");
  assert(BV5FormSelect.name("test").name == "test");
}
