module uim.bootstrap.vue.components.cards.title;

import uim.bootstrap.vue;

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
