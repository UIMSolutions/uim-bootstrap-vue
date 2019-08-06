module uim.bootstrap.vue.dropdowns.button;

import uim.bootstrap.vue;

class DBV5DropdownButton : DVUEComponent {
  this() {
    this
    .name("UimDropdownButton")    
    .props("block", `{ type: Boolean, default: false }`)
    .props("color", `{ type: String, default: "none", validator: value => ["none","primary", "secondary", "success", "danger", "warning", "info", "light", "dark", "link"].indexOf(value) >= 0 }`)
    .props("active", `{ type: Boolean, default: false }`)
    .props("disabled", `{ type: Boolean, default: false }`)
    .props("outline", `{ type: String, default: "none", validator: value => ["none", "primary", "secondary", "success", "danger", "warning", "info", "light", "dark"].indexOf(value) >= 0 }`)
    .props("size", `{ type: String, default: "normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0 }`)
    .computed("classes()", `return [
		"dropdown-item",
		"btn",    this.block ? 'btn-block' : '',
		(this.color !== "none") && (this.outline === "none") ? 'btn-'+this.color : '',
		(this.active) && (!this.disabled) ? 'active' : '',
		this.disabled ? 'disabled' : '',
		this.outline !== "none" ? 'btn-outline-'+this.outline : '',
		this.size !== "normal" ? 'btn-'+this.size : ""];`)
    .template_(`<button type="button" :class="this.classes"><slot /></button>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"DropdownButton");

unittest {
  assert(BV5DropdownButton.name == "UimDropdownButton");
  assert(BV5DropdownButton.name("test").name == "test");
}
		/*
		_name = "BV5-dropdown-button";
		_props["label"] = "String";
		_render = initVueVars~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				createVueElement("button", ["dropdown-item"], ["type":"button"]);
*/