module uim.bootstrap.vue.lists.item;

import uim.bootstrap.vue;

class DBV5ListItem : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-list-item";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
			createVueElement("li", ["list-group-item"]);
	}
}
auto BV5ListItem() { return new DBV5ListItem; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
