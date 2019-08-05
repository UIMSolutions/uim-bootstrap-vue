module uim.bootstrap.vue.components.forms.group;

import uim.bootstrap.vue;

class DBV5FormGroup : DVUEComponent {
	this() {
		super(); 
		
		_name = "BV5-form-group";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("div", ["form-group"]);
	}
}
auto BV5FormGroup() { return new DBV5FormGroup; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
