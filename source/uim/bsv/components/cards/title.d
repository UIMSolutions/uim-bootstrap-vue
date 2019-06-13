module uim.bsv.components.cards.title;

import uim.bsv;

class DBSVCardTitle : DBSVComponent {
	this() {
		super();

		_name = "bsv-card-title";
		_render = initVueVars~
			`tag='h4';`~
				`classes.push('card-title');`~
				`content=this.$slots.default;`~ 
				createVueElement("h4");
	}
}
auto BSVCardTitle() { return new DBSVCardTitle; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
