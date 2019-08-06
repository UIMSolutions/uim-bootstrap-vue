module uim.bootstrap.vue.paginations.item;

import uim.bootstrap.vue;

class DBV5PageItem: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-page-item";
		_props["active"] = "Boolean";
		_props["disabled"] = "Boolean";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				jsIf("this.active", "classes.push('active');")~
				jsIf("this.disabled", "classes.push('disabled');")~
				createVueElement("li", ["page-item"]);
	}
}
auto BV5PageItem() { return new DBV5PageItem; }

unittest {
		
}	

