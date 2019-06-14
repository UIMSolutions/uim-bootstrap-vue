module uim.bsv.components.progresses.bar;

import uim.bsv;

class DBSVProgressBar: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-progress-bar";
		_props["textColor"] = VUEProp("textColor", ["String"]);
		_props["bgColor"] = VUEProp("bgColor", ["String"]);
		_props["striped"] = VUEProp("striped", ["Boolean"]);
		_props["animated"] = VUEProp("animated", ["Boolean"]);
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
