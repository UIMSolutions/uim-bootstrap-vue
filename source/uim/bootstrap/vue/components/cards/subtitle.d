module uim.bootstrap.vue.cards.subtitle;

import uim.bootstrap.vue;

class DBV5CardSubtitle : DVUEComponent {
	this() {
		super();

		_name = "BV5-card-subtitle";
		_props["level"] = "String";
		_render = initVueVars~
			jsIfElse("this.level", "tag = 'h'+this.level;", "tag='h6';`")~ 
				`classes.push('card-subtitle');`~
				`content=this.$slots.default;`~ 
				createVueElement;
	}
}
auto BV5CardSubtitle() { return new DBV5CardSubtitle; }

unittest {
}	
