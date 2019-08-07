module uim.bootstrap.vue.cards.image;

public import uim.bootstrap.vue;

class DBV5CardImage : DVUEComponent {
  this() {
    this
    .name("UimCardImage")
    .props("position", `{ type: String, default: "top", validator: value => ["top","bottom"].indexOf(value) >= 0 }`)
    .computed("classes()", `return [
      this.position === "top" ? 'card-img-top' : 'card-img-bottom'
      ]`)
    .template_(`<img :class="this.classes">`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CardImage");

unittest {
  assert(BV5CardImage.name == "UimCardImage");
  assert(BV5CardImage.name("test").name == "test");
}

/* 
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				createVueElement("div", ["card-group"]);
        */