module uim.bootstrap.vue.components.alerts.alert;

import uim.bootstrap.vue;

class DBSVAlert : DBSVComponent {
	this() {
		super();

		_name = "bsv-alert";
		_props["color"] = "String";
		_render = initVueVars~
				jsIfElse("this.color", "classes.push('alert-'+this.color);", "classes.push('alert-primary');")~
				createVueElement("div", ["alert"]);
	}
}
auto BSVAlert() { return new DBSVAlert; }

unittest {
	assert(BSVAlert.name == "bsv-alert");
	assert(BSVAlert.templ == "'"~BS4Alert.toString~"'");
}	
