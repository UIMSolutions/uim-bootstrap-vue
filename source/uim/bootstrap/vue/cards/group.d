module uim.bootstrap.vue.cards.group;

public import uim.bootstrap.vue;

class DBV5CardGroup : DVUEComponent {
  this() {
    this
    .name("UimCardGroup")
    .computed("classes()", `return ["card-group"]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CardGroup");

unittest {
  assert(BV5CardGroup.name == "UimCardGroup");
  assert(BV5CardGroup.name("test").name == "test");
}

/* 
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				createVueElement("div", ["card-group"]);
        */