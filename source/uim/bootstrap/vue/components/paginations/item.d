module uim.bsv.components.paginations.item;

import uim.bsv;

class DBSVPageItem: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-page-item";
		_props["active"] = VUEProp("active", ["Boolean"]);
		_props["disabled"] = VUEProp("disabled", ["Boolean"]);
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				jsIf("this.active", "classes.push('active');")~
				jsIf("this.disabled", "classes.push('disabled');")~
				createVueElement("li", ["page-item"]);
	}
}
auto BSVPageItem() { return new DBSVPageItem; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

