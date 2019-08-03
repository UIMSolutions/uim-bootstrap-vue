module uim.bootstrap.vue.components.forms.form;

import uim.bootstrap.vue;

class DBSVForm : DBSVComponent {
	this() {
		super(); 
		
		_name = "bsv-form";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("form");
	}
}
auto BSVForm() { return new DBSVForm; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
