module uim.bootstrap.vue.inputs.hidden;

import uim.bootstrap.vue;

class DBV5InputHidden : DVUEComponent {
	this() {
		this
		.name("UimInputHidden")
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
mixin(BV5Shortcut!"InputHidden");

unittest {
  assert(BV5InputHidden.name == "UimInputHidden");
  assert(BV5InputHidden.name("test").name == "test");
}	
