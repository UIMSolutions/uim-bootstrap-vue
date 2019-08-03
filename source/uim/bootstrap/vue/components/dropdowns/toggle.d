module uim.bootstrap.vue.components.dropdowns.toggle;

import uim.bootstrap.vue;

class DBSVDropdownToggle : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-dropdown-toggle";
		_props["id"] = "String";
		_props["label"] = "String";
		_props["color"] = "String";
		_render = initVueVars~
			"attributes={'data-toggle':'dropdown', 'aria-haspopup':'true', 'aria-expanded':'false'};"~ 
				jsIf("this.id", "attributes.id=this.id;")~ 
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				jsIfElse("this.color", "classes.push('btn-'+this.color)", `classes.push('btn-primary');`)~ 
		createVueElement("button", ["btn", "dropdown-toggle"], ["type":"button"]);
	}
}
auto BSVDropdownToggle() { return new DBSVDropdownToggle; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
