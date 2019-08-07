module uim.bootstrap.vue.cards.link;

import uim.bootstrap.vue;

class DBV5CardLink : DVUEComponent {
  this() {
    this    
    .name("UimCardLink")
    .props("href", `{ type: String, default: "#" }`)
    .computed("classes()", `return ["card-link"];`)
    .template_(`<a :class="this.classes" :href="this.href"><slot /></a>`);
}
  this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"CardLink");

unittest {
  assert(BV5CardLink.name == "UimCardLink");
  assert(BV5CardLink.name("test").name == "test");
}
/*		_name = "BV5-dropdown-link";
		_props["link"] = "String";
		_props["label"] = "String";
		_render = initVueVars~
				jsIf("this.link", "attributes.href=this.link;")~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("a", ["dropdown-item"]);
*/