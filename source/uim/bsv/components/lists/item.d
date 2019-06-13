module uim.bsv.components.lists.item;

import uim.bsv;

class DBSVListItem : DBSVComponent {
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
