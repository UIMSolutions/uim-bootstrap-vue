module uim.bootstrap.vue.components.navs.link;

import uim.bootstrap.vue;

class DBSVNavLink : DVUEComponent {
	this() {
		super();
		
		_name = "bsv-nav-link";
		_props["link"] = "String";
		_props["label"] = "String";
		_props["active"] = "Boolean";
		_props["disabled"] = "Boolean";
		_render = initVueVars~
			jsIf("this.link", "attributes.href=this.link;")~
				jsIfElse("this.label", "content.push(this.label)", `content=this.$slots.default;`)~ 
				jsIf("this.active", "classes.push('active');")~
				jsIf("this.disabled", "classes.push('disabled');")~
				createVueElement("a", ["nav-link"]);
	}
}
auto BSVNavLink() { return new DBSVNavLink; }

unittest {
	writeln("Testing ", __MODULE__);	
}	