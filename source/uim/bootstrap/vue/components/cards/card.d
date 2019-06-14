module uim.bsv.components.cards.card;

import uim.bsv;

class DBSVCard : DBSVComponent {
	this() {
		super();

		_name = "bsv-card";
		_props["textColor"] = VUEProp("textColor", ["String"]);
		_props["bgColor"] = VUEProp("bgColor", ["String"]);
		_props["block"] = VUEProp("block", ["Boolean"]);
		_props["inverse"] = VUEProp("inverse", ["Boolean"]);
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
