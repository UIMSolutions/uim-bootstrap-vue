module uim.bootstrap.vue.components.alerts.alert;

import uim.bootstrap.vue;

class DBV5Alert : DVUEComponent {
	this() {
		super();

		_name = "bsv-alert";
		_props["color"] = "String";
		_render = initVueVars~
				jsIfElse("this.color", "classes.push('alert-'+this.color);", "classes.push('alert-primary');")~
				createVueElement("div", ["alert"]);
	}
}
auto BV5Alert() { return new DBV5Alert; }

unittest {
	assert(BV5Alert.name == "bsv-alert");
	assert(BV5Alert.template_ == "'"~BS4Alert.toString~"'");
}	
