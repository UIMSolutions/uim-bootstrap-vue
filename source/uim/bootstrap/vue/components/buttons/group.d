module uim.bootstrap.vue.components.buttons.group;

import uim.bootstrap.vue;

class DBSVButtonGroup : DVUEComponent {
	this() {
		super(); 
		
		_name = "bsv-button-group";
		_props["label"] = "String";
		_props["size"] = "String";
		_props["vertical"] = "Boolean";
		_props["toolbar"] = "Boolean";
		_props["buttons"] = "Array";

		_render = initVueVars~
			jsIfElse("this.vertical", "classes.push('btn-group-vertical');", "classes.push('btn-group');")~ 
				jsIfElse("this.toolbar", "classes.push('btn-toolbar');", "classes.push('btn-group');")~ 
				jsIf("this.size", "classes.push('btn-group-'+this.size);")~
				jsIf("this.label", "attributes.ariaLabel = this.label;")~ 
				createVueElement("div", ["role":"group"]);
	}
}
auto BSVButtonGroup() { return new DBSVButtonGroup; }

unittest {
	writeln("Testing ", __MODULE__);
}