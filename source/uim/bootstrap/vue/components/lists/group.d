module uim.bootstrap.vue.components.lists.group;

import uim.bootstrap.vue;

class DBSVListGroup : DVUEComponent {
	this() {
		super();
		
		_name = "bsv-list-group";
		_props["type"] = "String";
		_props["flush"] = "Boolean";
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
