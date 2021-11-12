module uim.bootstrap.vue.blockquotes.footer;

public import uim.bootstrap.vue;

class DBV5BlockquoteFooter : DVUEComponent {
  this() {
    this
    .name("UimBlockquoteFooter")
    .computed("classes()", `return [
    "blockquote-footer"]`)
    .template_(`<footer :class="this.classes"><slot /></footer>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"BlockquoteFooter");

unittest {
  assert(BV5BlockquoteFooter.name == "UimBlockquoteFooter");
  assert(BV5BlockquoteFooter.name("test").name == "test");
}
