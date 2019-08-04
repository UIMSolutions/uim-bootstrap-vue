module uim.bootstrap.vue.components.forms.group;

import uim.bootstrap.vue;

class DBSVFormGroup : DVUEComponent {
	this() {
		super(); 
		
		_name = "bsv-form-group";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("div", ["form-group"]);
	}
}
auto BSVFormGroup() { return new DBSVFormGroup; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
