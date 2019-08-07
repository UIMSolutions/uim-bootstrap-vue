module uim.bootstrap.vue.paginations.pagination;

import uim.bootstrap.vue;

class DBV5Pagination: DVUEComponent {
this() {
      this
	  .name("UimPagination")
	    .props("size", `{ type: String, default: "normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0 }`)
	  .computed("classes()", `return ["pagination",
	     this.size !== "normal" ? 'pagination-'+this.size : ""];`)      
	  .template_(`<ul :class="this.classes"><slot /></ul>`);
    }
    this(DVUEApp anApp) { this(); _app = anApp; }
    this(string aName) { this(); _name = aName; }
    this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Pagination");

unittest {
  assert(BV5Pagination.name == "UimPagination");
  assert(BV5Pagination.name("test").name == "test");
}

/*		_name = "BV5-pagination";
		_props["size"] = "String";
		_props["position"] = "String";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				jsIf("this.size", "classes.push('justify-content-'+(this.size);")~
				jsIf("this.size", "classes.push('justify-content-'+(this.size);")~
				createVueElement("ul", ["pagination"]);
*/