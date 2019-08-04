module uim.bootstrap.vue.components.cards.card;

import uim.bootstrap.vue;

class DBSVCard : DVUEComponent {
	this() {
		super();

		_name = "bsv-card";
		this.props("textColor", "String")
		.props("bgColor", "String")
		.props("block", "Boolean")
		.props("inverse", "Boolean");
		_render = initVueVars~
				`content=this.$slots.default;`~ 
				jsIf("this.textColor", "classes.push('text-'+this.textColor);")~ 
				jsIf("this.bgColor", "classes.push('bg-'+this.bgColor);")~
				jsIf("this.block", "classes.push('card-block');")~ 
				jsIf("this.inverse", "classes.push('card-inverse');")~
				createVueElement("div", ["card"]);
	}
}
auto BSVCard() { return new DBSVCard; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
