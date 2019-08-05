module uim.bootstrap.vue.cards.fFooter;

public import uim.bootstrap.vue;

class DBV5CardFooter : DVUEComponent {
  this() {
    this
    .name("UimCardFooter")
    .computed("classes()", `return ["card-footer"]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CardFooter");

unittest {
  assert(BV5CardFooter.name == "UimCardFooter");
  assert(BV5CardFooter.name("test").name == "test");
}
