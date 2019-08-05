module uim.bootstrap.vue.lists.group;

import uim.bootstrap.vue;

class DBV5ListGroup : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-list-group";
		_props["type"] = "String";
		_props["flush"] = "Boolean";
		_render = initVueVars~
			jsIf("this.flush", "classes.push('list-group-flush');")~
			`content.push(this.$slots.default);`~ 
			createVueElement("ul", ["list-group"]);
	}
}
auto BV5ListGroup() { return new DBV5ListGroup; }

unittest {
		
}	
