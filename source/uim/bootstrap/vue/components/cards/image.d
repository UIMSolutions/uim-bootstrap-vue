module uim.bootstrap.vue.cards.image;

import uim.bootstrap.vue;

class DBV5CardImage : DVUEComponent {
	this() {
		super();

		_name = "BV5-card-img";
		_props["position"] = "String";

		_render = initVueVars~
				`content=this.$slots.default;`~ 
				jsIf("this.position", "classes.push('card-img-'+this.position); else classes.push('card-img-top');")~ 
				createVueElement("img");
	}
}
auto BV5CardImage() { return new DBV5CardImage; }

unittest {
		
}	
