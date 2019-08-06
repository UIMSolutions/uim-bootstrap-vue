module uim.bootstrap.vue.dropdowns.link;

import uim.bootstrap.vue;

class DBV5DropdownLink : DVUEComponent {
  this() {
    this    
    .name("UimDropdownLink")
    .props("active", `{ type: Boolean, default: false }`)
    .props("disabled", `{ type: Boolean, default: false }`)
    .props("href", `{ type: String, default: "#" }`)
    .computed("classes()", `return [
    "dropdown-item",
    this.active ? 'active' : '',
    this.disabled ? 'disabled' : ''];`)
    .template_(`<a :class="this.classes" :href="this.href"><slot /></a>`);
}
  this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"DropdownLink");

unittest {
  assert(BV5DropdownLink.name == "UimDropdownLink");
  assert(BV5DropdownLink.name("test").name == "test");
}
/*		_name = "BV5-dropdown-link";
		_props["link"] = "String";
		_props["label"] = "String";
		_render = initVueVars~
				jsIf("this.link", "attributes.href=this.link;")~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("a", ["dropdown-item"]);
*/