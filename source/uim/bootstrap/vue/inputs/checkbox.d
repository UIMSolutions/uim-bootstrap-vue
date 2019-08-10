module uim.bootstrap.vue.inputs.checkbox;

import uim.bootstrap.vue;

class DBV5InputCheckbox : DVUEComponent {
	this() {
		this
		.name("UimInputCheckbox")
	    .props("size", `{ type: String, default: "normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0 }`)
		.computed("classes()", `return [
			'form-control',
    		this.size !== "normal" ? 'form-control-'+this.size : ""];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputCheckbox");

unittest {
  assert(BV5InputCheckbox.name == "UimInputCheckbox");
  assert(BV5InputCheckbox.name("test").name == "test");
}	
