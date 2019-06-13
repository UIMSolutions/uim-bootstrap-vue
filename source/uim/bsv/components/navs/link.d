module uim.bsv.components.navs.link;

import uim.bsv;

class DBSVNavLink : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-nav-link";
		_props["link"] = VUEProp("link", ["String"]);
		_props["label"] = VUEProp("label", ["String"]);
		_props["active"] = VUEProp("active", ["Boolean"]);
		_props["disabled"] = VUEProp("disabled", ["Boolean"]);
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