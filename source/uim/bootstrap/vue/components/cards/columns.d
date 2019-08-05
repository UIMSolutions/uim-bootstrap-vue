module uim.bootstrap.vue.components.cards.columns;

import uim.bootstrap.vue;

class DBV5CardColumns : DVUEComponent {
	this() {
		super();

		_name = "BV5-card-columns";
		_render = ``~initVueVars~
			`tag='h6';`~
				`classes.push('card-columns');`~
				`content=this.$slots.default;`~ 
				jsIf("this.level", "tag = 'h'+this.level;")~ 
				createVueElement("h6");
	}
}
auto BV5CardColumns() { return new DBV5CardColumns; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
