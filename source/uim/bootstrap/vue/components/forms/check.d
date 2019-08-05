module uim.bootstrap.vue.components.forms.check;

import uim.bootstrap.vue;

class DBV5FormCheck : DVUEComponent {
	this() {
		super(); 
		
		_name = "BV5-form-check";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("div", ["form-check"]);
	}
}
auto BV5FormCheck() { return new DBV5FormCheck; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
