module uim.bsv.layout.row;

import uim.bsv;

class DBSVRow : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-row";
		_props["textColor"] = VUEProp("textColor", ["String"]);
		_props["bgColor"] = VUEProp("bgColor", ["String"]);
		_render = initVueVars~
			`tag='div';`~
			`classes.push('row');`~ 
				`content=this.$slots.default;`~
				`if (this.textColor) classes.push('text-'+this.textColor);`~ 
				`if (this.bgColor) classes.push('bg-'+this.bgColor);`~
				createVueElement;
	}
}
auto BSVRow() { return new DBSVRow; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
