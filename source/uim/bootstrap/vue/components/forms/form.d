module uim.bootstrap.vue.components.forms.form;

import uim.bootstrap.vue;

class DBV5Form : DVUEComponent {
	this() {
		super(); 
		
		_name = "BV5-form";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("form");
	}
}
auto BV5Form() { return new DBV5Form; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
