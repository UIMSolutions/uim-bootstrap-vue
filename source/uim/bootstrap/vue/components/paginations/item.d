module uim.bootstrap.vue.components.paginations.item;

import uim.bootstrap.vue;

class DBSVPageItem: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-page-item";
		_props["active"] = "Boolean";
		_props["disabled"] = "Boolean";
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

