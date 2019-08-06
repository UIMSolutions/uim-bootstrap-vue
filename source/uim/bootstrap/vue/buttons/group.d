module uim.bootstrap.vue.buttons.group;

public import uim.bootstrap.vue;

// Group a series of buttons together on a single line with the button group. You use this in combincation with `fd-button-group-button`.
class DBV5ButtonGroup : DVUEComponent {
  this() {
    this    
    .name("UimButtonGroup")
    .props("orientation", `{ type: String, default: "horizontal", validator: value => ["horizontal", "vertical"].indexOf(value) >= 0 }`)
    .props("size", `{ type: String, default: "normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0 }`)
    .computed("classes()", `return [
    this.orientation === "horizontal" ? "btn-group" : "btn-group-vertical",
    this.size !== "normal" ? 'btn-group-'+this.size : ""];`)
    .template_(`<div :class="this.classes" role="group" aria-label="Basic example"><slot /></div>`); 
  }
  this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ButtonGroup");
unittest {    
  assert(BV5ButtonGroup.name == "UimButtonGroup");
  assert(BV5ButtonGroup.name("test").name == "test");
  assert(BV5ButtonGroup.template_ == `<div :class="this.classes" role="group" aria-label="Basic example"><slot /></div>`);
}

/*
		_props["label"] = "String";
		_props["size"] = "String";
		_props["vertical"] = "Boolean";
		_props["toolbar"] = "Boolean";
		_props["buttons"] = "Array";

		_render = initVueVars~
			jsIfElse("this.vertical", "classes.push('btn-group-vertical');", "classes.push('btn-group');")~ 
				jsIfElse("this.toolbar", "classes.push('btn-toolbar');", "classes.push('btn-group');")~ 
				jsIf("this.size", "classes.push('btn-group-'+this.size);")~
				jsIf("this.label", "attributes.ariaLabel = this.label;")~ 
				createVueElement("div", ["role":"group"]);
*/