module uim.bootstrap.vue.cards.text;

public import uim.bootstrap.vue;

class DBV5CardText : DVUEComponent {
  this() {
    this
    .name("UimCardText")
    .computed("classes()", `return ["card-text"]`)
    .template_(`<p :class="this.classes"><slot /></p>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CardText");

unittest {
  assert(BV5CardText.name == "UimCardText");
  assert(BV5CardText.name("test").name == "test");
}

/* 		_name = "BV5-card-text";
		_render = initVueVars~
				`classes.push('card-text');`~
				`content=this.$slots.default;`~ 
				createVueElement("p");
        */