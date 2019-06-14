module uim.bsv.components.badges.badge;

import uim.bsv;

class DBSVBadge: DBSVComponent {
	this() {
		super();

		_name = "bsv-badge";
		_props["color"] = VUEProp("color", ["String"]);
		_props["pill"] = VUEProp("pill", ["Boolean"]);
		
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

