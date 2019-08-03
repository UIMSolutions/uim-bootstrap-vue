module uim.bootstrap.vue.components.breadcrumbs.breadcrumb;

import uim.bootstrap.vue;

class DBSVBreadCrumb: DBSVComponent {
	this() {
		super();
			
		_name = "bsv-breadcrumb";
		_props["items"] = "Array";
		_render = initVueVars~
			"var cls = []; cls.push('breadcrumb');"~
			jsIfElse("this.items",
					"var itemElements=[];"~
					`for (var i = 0; i < this.items.length; i++) {`~
					`var item = this.items[i];`~
					jsIfElse("i < (this.items.length-1)", 
						"itemElements.push(createElement('bsv-breadcrumb-item', [createElement('a', {attrs:{href:item.link}}, item.label)]));",
						"itemElements.push(createElement('bsv-breadcrumb-item', {class:['active']}, item.label));")~
					"}"~
				"content.push(createElement('ol', {class:cls}, itemElements));",  
				"content.push(createElement('ol', {class:cls}, this.$slots.default));")~
				createVueElement("nav", ["ariaLabel":"breadcrumb"]);
	}
}
auto BSVBreadCrumb() { return new DBSVBreadCrumb; }

unittest {
}	

