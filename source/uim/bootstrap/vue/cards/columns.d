module uim.bootstrap.vue.cards.columns;

public import uim.bootstrap.vue;

class DBV5CardColumns : DVUEComponent {
  this() {
    this
    .name("UimCardColumns")
    .computed("classes()", `return ["card-columns"]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CardColumns");

unittest {
  assert(BV5CardColumns.name == "UimCardColumns");
  assert(BV5CardColumns.name("test").name == "test");
}
