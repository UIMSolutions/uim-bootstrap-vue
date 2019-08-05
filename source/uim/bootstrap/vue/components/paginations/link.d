﻿module uim.bootstrap.vue.components.paginations.link;

import uim.bootstrap.vue;

class DBV5PageLink: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-page-link";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("a", ["page-link"]);
	}
}
auto BV5PageLink() { return new DBV5PageLink; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

