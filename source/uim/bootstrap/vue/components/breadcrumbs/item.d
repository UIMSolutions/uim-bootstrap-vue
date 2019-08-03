module uim.bootstrap.vue.components.breadcrumbs.item;

import uim.bootstrap.vue;

class DBSVBreadCrumbItem: DBSVComponent {
	this() {
		super();
			
		_name = "bsv-breadcrumb-item";
		_props["label"] = "String";
		_props["active"] = "Boolean";
		_render = initVueVars~
			jsIf("this.active", "classes.push('active');")~ // attributes.ariaCurrent='page';")~
				jsIfElse("this.label", `content.push(this.label);`, "content.push(this.$slots.default);")~
				createVueElement("li", ["breadcrumb-item"]);
	}
}
auto BSVBreadCrumbItem() { return new DBSVBreadCrumbItem; }

unittest {
	writeln("Testing ", __MODULE__);	
}


