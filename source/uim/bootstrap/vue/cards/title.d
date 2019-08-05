module uim.bootstrap.vue.cards.title;

public import uim.bootstrap.vue;

class DBV5CardTitle : DVUEComponent {
  this() {
    this
    .name("UimCardTitle")
    .computed("classes()", `return ["card-title"]`)
    .template_(`<h5 :class="this.classes"><slot /></h5>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CardTitle");

unittest {
  assert(BV5CardTitle.name == "UimCardTitle");
  assert(BV5CardTitle.name("test").name == "test");
}
