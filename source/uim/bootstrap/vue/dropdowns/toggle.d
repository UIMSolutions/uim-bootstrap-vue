module uim.bootstrap.vue.dropdowns.toggle;

import uim.bootstrap.vue;

class DBV5DropdownToggle : DVUEComponent {
 this() {
    this
    .name("UimDropdownToggle")
    .props("color", `{ type: String, default: "none", validator: value => ["none","primary", "secondary", "success", "danger", "warning", "info", "light", "dark", "link"].indexOf(value) >= 0 }`)
    .computed("classes()", `return [
		"dropdown-toggle",
		"btn",
    	this.color !== "none" ? 'btn-'+this.color : ''
		]`)
    .template_(`<button :class="this.classes"><slot /></button>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"DropdownToggle ");

unittest {
  assert(BV5DropdownToggle.name == "UimDropdownToggle");
  assert(BV5DropdownToggle.name("test").name == "test");
}		
/*
		_name = "BV5-dropdown-toggle";
		_props["id"] = "String";
		_props["label"] = "String";
		_props["color"] = "String";
		_render = initVueVars~
			"attributes={'data-toggle':'dropdown', 'aria-haspopup':'true', 'aria-expanded':'false'};"~ 
				jsIf("this.id", "attributes.id=this.id;")~ 
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				jsIfElse("this.color", "classes.push('btn-'+this.color)", `classes.push('btn-primary');`)~ 
		createVueElement("button", ["btn", "dropdown-toggle"], ["type":"button"]);
	}
}
*/