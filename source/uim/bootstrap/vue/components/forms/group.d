module uim.bsv.components.forms.group;

import uim.bsv;

class DBSVFormGroup : DBSVComponent {
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
