module uim.bootstrap.vue.navs.link;

import uim.bootstrap.vue;

class DBV5NavLink : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-nav-link";
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
auto BV5NavLink() { return new DBV5NavLink; }

unittest {
		
}	