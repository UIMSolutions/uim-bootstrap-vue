module uim.bootstrap.vue.layout.row;

import uim.bootstrap.vue;

class DBV5Row : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-row";
		_props["textColor"] = "String";
		_props["bgColor"] = "String";
		_render = initVueVars~
			`tag='div';`~
			`classes.push('row');`~ 
				`content=this.$slots.default;`~
				`if (this.textColor) classes.push('text-'+this.textColor);`~ 
				`if (this.bgColor) classes.push('bg-'+this.bgColor);`~
				createVueElement;
	}
}
auto BV5Row() { return new DBV5Row; }

unittest {
}	
