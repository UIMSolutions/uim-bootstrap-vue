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
  assert(BV5Card.name == "UimCard");
  assert(BV5Card.name("test").name == "test");
}

		_name = "BV5-card";
		this.props("textColor", "String")
		.props("bgColor", "String")
		.props("block", "Boolean")
		.props("inverse", "Boolean");
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				jsIf("this.textColor", "classes.push('text-'+this.textColor);")~ 
				jsIf("this.bgColor", "classes.push('bg-'+this.bgColor);")~
				jsIf("this.block", "classes.push('card-block');")~ 
				jsIf("this.inverse", "classes.push('card-inverse');")~
				createVueElement("div", ["card"]);