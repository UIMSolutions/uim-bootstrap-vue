module uim.bootstrap.vue.components.breadcrumbs.item;

import uim.bootstrap.vue;

class DBV5BreadCrumbItem: DVUEComponent {
	this() {
		super();
			
		_name = "BV5-breadcrumb-item";
		_props["label"] = "String";
		_props["active"] = "Boolean";
		_render = initVueVars~
			jsIf("this.active", "classes.push('active');")~ // attributes.ariaCurrent='page';")~
				jsIfElse("this.label", `content.push(this.label);`, "content.push(this.$slots.default);")~
				createVueElement("li", ["breadcrumb-item"]);
	}
}
auto BV5BreadCrumbItem() { return new DBV5BreadCrumbItem; }

unittest {
	writeln("Testing ", __MODULE__);	
}


