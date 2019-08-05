module uim.bootstrap.vue.components.paginations.pagination;

import uim.bootstrap.vue;

class DBV5Pagination: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-pagination";
		_props["size"] = "String";
		_props["position"] = "String";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				jsIf("this.size", "classes.push('justify-content-'+(this.size);")~
				jsIf("this.size", "classes.push('justify-content-'+(this.size);")~
				createVueElement("ul", ["pagination"]);
	}
}
auto BV5Pagination() { return new DBV5Pagination; }

unittest {
}	

