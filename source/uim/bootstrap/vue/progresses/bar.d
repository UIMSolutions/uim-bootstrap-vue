module uim.bootstrap.vue.progresses.bar;

import uim.bootstrap.vue;

class DBV5ProgressBar: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-progress-bar";
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
auto BV5ProgressBar() { return new DBV5ProgressBar; }

unittest {
}	
