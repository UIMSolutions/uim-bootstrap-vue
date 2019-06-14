module uim.bsv.components.buttons.group;

import uim.bsv;

class DBSVButtonGroup : DBSVComponent {
	this() {
		super(); 
		
		_name = "bsv-button-group";
		_props["label"] = VUEProp("label", ["String"]);
		_props["size"] = VUEProp("label", ["String"]);
		_props["vertical"] = VUEProp("vertical", ["Boolean"]);
		_props["toolbar"] = VUEProp("toolbar", ["Boolean"]);
		_props["buttons"] = VUEProp("buttons", ["Array"]);

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