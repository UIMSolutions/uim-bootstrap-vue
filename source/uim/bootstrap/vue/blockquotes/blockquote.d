module uim.bootstrap.vue.blockquotes.blockquote;

public import uim.bootstrap.vue;

class DBV5Blockquote : DVUEComponent {
  this() {
    this
    .name("UimBlockquote")
    .computed("classes()", `return [
    "blockquote"
    ]`)
    .template_(`<blockquote :class="this.classes"><slot /></blockquote>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Blockquote");

unittest {
  assert(BV5Blockquote.name == "UimBlockquote");
  assert(BV5Blockquote.name("test").name == "test");
}