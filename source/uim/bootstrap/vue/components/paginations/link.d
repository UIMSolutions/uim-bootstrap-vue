module uim.bootstrap.vue.components.paginations.link;

import uim.bootstrap.vue;

class DBSVPageLink: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-page-link";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("a", ["page-link"]);
	}
}
auto BSVPageLink() { return new DBSVPageLink; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

