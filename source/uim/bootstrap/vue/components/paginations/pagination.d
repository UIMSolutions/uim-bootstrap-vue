module uim.bootstrap.vue.components.paginations.pagination;

import uim.bootstrap.vue;

class DBSVPagination: DVUEComponent {
	this() {
		super();
		
		_name = "bsv-pagination";
		_props["size"] = "String";
		_props["position"] = "String";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				jsIf("this.size", "classes.push('justify-content-'+(this.size);")~
				jsIf("this.size", "classes.push('justify-content-'+(this.size);")~
				createVueElement("ul", ["pagination"]);
	}
}
auto BSVPagination() { return new DBSVPagination; }

unittest {
}	

