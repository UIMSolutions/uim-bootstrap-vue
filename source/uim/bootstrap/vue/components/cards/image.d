module uim.bsv.components.cards.image;

import uim.bsv;

class DBSVCardImage : DBSVComponent {
	this() {
		super();

		_name = "bsv-card-img";

		_props["position"] = VUEProp("position", ["String"]);

		_render = initVueVars~
				`content=this.$slots.default;`~ 
				jsIf("this.position", "classes.push('card-img-'+this.position); else classes.push('card-img-top');")~ 
				createVueElement("img");
	}
}
auto BSVCardImage() { return new DBSVCardImage; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
