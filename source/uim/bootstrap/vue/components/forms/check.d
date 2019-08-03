module uim.bootstrap.vue.components.forms.check;

import uim.bootstrap.vue;

class DBSVFormCheck : DBSVComponent {
	this() {
		super(); 
		
		_name = "bsv-form-check";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("div", ["form-check"]);
	}
}
auto BSVFormCheck() { return new DBSVFormCheck; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
