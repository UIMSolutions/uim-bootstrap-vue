module uim.bsv.components.paginations.pagination;

import uim.bsv;

class DBSVPagination: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-pagination";
		_props["size"] = VUEProp("size", ["String"]);
		_props["position"] = VUEProp("position", ["String"]);
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				jsIf("this.size", "classes.push('justify-content-'+(this.size);")~
				jsIf("this.size", "classes.push('justify-content-'+(this.size);")~
				createVueElement("ul", ["pagination"]);
	}
}
auto BSVPagination() { return new DBSVPagination; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

