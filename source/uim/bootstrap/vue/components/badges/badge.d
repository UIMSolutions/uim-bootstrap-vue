module uim.bootstrap.vue.components.badges.badge;

import uim.bootstrap.vue;

class DBSVBadge: DVUEComponent {
	this() {
		super();

		_name = "bsv-badge";
		_props["color"] = "String";
		_props["pill"] = "Boolean";
		
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				jsIf("this.color", "classes.push('badge-'+this.color);")~
				jsIf("this.pill", "classes.push('badge-pill');")~
				createVueElement("span", ["badge"]);
	}
}
auto BSVBadge() { return new DBSVBadge; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

