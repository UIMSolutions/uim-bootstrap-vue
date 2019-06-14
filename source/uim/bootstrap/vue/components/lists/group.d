module uim.bsv.components.lists.group;

import uim.bsv;

class DBSVListGroup : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-list-group";
		_props["type"] = VUEProp("type", ["String"]);
		_props["flush"] = VUEProp("flush", ["Boolean"]);
		_render = initVueVars~
			jsIf("this.flush", "classes.push('list-group-flush');")~
			`content.push(this.$slots.default);`~ 
			createVueElement("ul", ["list-group"]);
	}
}
auto BSVListGroup() { return new DBSVListGroup; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
