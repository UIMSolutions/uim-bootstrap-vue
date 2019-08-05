module uim.bootstrap.vue.cards.body_;

public import uim.bootstrap.vue;

class DBV5CardBody : DVUEComponent {
  this() {
    this
    .name("UimCardBody")
    .computed("classes()", `return ["card-body"]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CardBody");

unittest {
  assert(BV5CardBody.name == "UimCardBody");
  assert(BV5CardBody.name("test").name == "test");
}
