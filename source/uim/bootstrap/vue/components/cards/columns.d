module uim.bsv.components.cards.columns;

import uim.bsv;

class DBSVCardColumns : DBSVComponent {
	this() {
		super();

		_name = "bsv-card-columns";
		_render = ``~initVueVars~
			`tag='h6';`~
				`classes.push('card-columns');`~
				`content=this.$slots.default;`~ 
				jsIf("this.level", "tag = 'h'+this.level;")~ 
				createVueElement("h6");
	}
}
auto BSVCardColumns() { return new DBSVCardColumns; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
