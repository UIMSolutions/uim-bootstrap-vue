module uim.bootstrap.vue.components.lists.item;

import uim.bootstrap.vue;

class DBSVListItem : DVUEComponent {
	this() {
		super();
		
		_name = "bsv-list-item";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
			createVueElement("li", ["list-group-item"]);
	}
}
auto BSVListItem() { return new DBSVListItem; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
