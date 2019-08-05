module uim.bootstrap.vue.cards.header;

public import uim.bootstrap.vue;

class DBV5CardHeader : DVUEComponent {
  this() {
    this
    .name("UimCardHeader")
    .computed("classes()", `return ["card-header"]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CardHeader");

unittest {
  assert(BV5CardHeader.name == "UimCardHeader");
  assert(BV5CardHeader.name("test").name == "test");
}
