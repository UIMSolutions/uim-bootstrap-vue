module uim.bootstrap.vue.cards.card;

public import uim.bootstrap.vue;

class DBV5Card : DVUEComponent {
  this() {
    this
    .name("UimCard")
    .computed("classes()", `return ["card"]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Card");

unittest {
  assert(DBV5Card.name == "UimCard");
  assert(DBV5Card.name("test").name == "test");
}
