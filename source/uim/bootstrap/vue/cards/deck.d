module uim.bootstrap.vue.cards.deck;

public import uim.bootstrap.vue;

class DBV5CardDeck : DVUEComponent {
  this() {
    this
    .name("UimCardDeck")
    .computed("classes()", `return ["card-deck"]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CardDeck");

unittest {
  assert(BV5CardDeck.name == "UimCardDeck");
  assert(BV5CardDeck.name("test").name == "test");
}

/* 
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				createVueElement("div", ["card-deck"]);
        */