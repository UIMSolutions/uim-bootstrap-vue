module uim.bootstrap.vue.components.progresses.bar;

import uim.bootstrap.vue;

class DBSVProgressBar: DVUEComponent {
	this() {
		super();
		
		_name = "bsv-progress-bar";
		_props["textColor"] = "String";
		_props["bgColor"] = "String";
		_props["striped"] = "Boolean";
		_props["animated"] = "Boolean";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				jsIf("this.textColor", "classes.push('text-'+this.textColor);")~ 
				jsIf("this.bgColor", "classes.push('bg-'+this.bgColor);")~
				jsIf("this.striped", "classes.push('progress-bar-striped');")~
				jsIf("this.animated", "classes.push('progress-bar-animated');")~
				createVueElement("div", ["progress-bar"]);
	}
}
auto BSVProgressBar() { return new DBSVProgressBar; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
