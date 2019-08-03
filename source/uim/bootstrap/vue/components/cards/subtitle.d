module uim.bootstrap.vue.components.cards.subtitle;

import uim.bootstrap.vue;

class DBSVCardSubtitle : DBSVComponent {
	this() {
		super();

		_name = "bsv-card-subtitle";
		_props["level"] = "String";
		_render = initVueVars~
			jsIfElse("this.level", "tag = 'h'+this.level;", "tag='h6';`")~ 
				`classes.push('card-subtitle');`~
				`content=this.$slots.default;`~ 
				createVueElement;
	}
}
auto BSVCardSubtitle() { return new DBSVCardSubtitle; }

unittest {
}	
