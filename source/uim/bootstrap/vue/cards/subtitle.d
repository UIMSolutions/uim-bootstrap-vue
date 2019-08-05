module uim.bootstrap.vue.cards.subtitle;

public import uim.bootstrap.vue;

class DBV5CardSubtitle : DVUEComponent {
  this() {
    this
    .name("UimCardSubtitle")
    .computed("classes()", `return ["card-subtitle"]`)
    .template_(`<h5 :class="this.classes"><slot /></h5>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Subtitle");

unittest {
  assert(BV5CardSubtitle.name == "UimCardSubtitle");
  assert(BV5CardSubtitle.name("test").name == "test");
}

/*
		_name = "BV5-card-title";
		_render = initVueVars~
			`tag='h4';`~
				`classes.push('card-title');`~
				`content=this.$slots.default;`~ 
				createVueElement("h4");
*/