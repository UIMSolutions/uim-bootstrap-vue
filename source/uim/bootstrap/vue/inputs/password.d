module uim.bootstrap.vue.inputs.password;

import uim.bootstrap.vue;

class DBV5InputPassword : DVUEComponent {
	this() {
		this
		.name("UimInputPassword")
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
mixin(BV5Shortcut!"InputPassword");

unittest {
  assert(BV5InputPassword.name == "UimInputPassword");
  assert(BV5InputPassword.name("test").name == "test");
}	
