module uim.bootstrap.vue.forms.inline;

public import uim.bootstrap.vue;

class DBV5FormInline : DVUEComponent {
  this() {
      this
      .name("UimFormInline")
      .template_(`<form class="form-inline"><slot /></form>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"FormInline");

unittest {
  assert(BV5Form.name == "UimFormInline");
  assert(BV5Form.name("test").name == "test");
}
