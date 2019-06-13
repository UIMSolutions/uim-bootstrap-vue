module uim.bsv.components.alerts.alert;

import uim.bsv;

class DBSVAlert : DBSVComponent {
	this() {
		super();

		_name = "bsv-alert";
		_props["color"] = VUEProp("color", ["String"]);
		_render = initVueVars~
				jsIfElse("this.color", "classes.push('alert-'+this.color);", "classes.push('alert-primary');")~
				createVueElement("div", ["alert"]);
	}
}
auto BSVAlert() { return new DBSVAlert; }

unittest {
	writeln("Testing ", __MODULE__);	

	assert(BSVAlert.name == "bsv-alert");
	assert(BSVAlert.templ == "'"~BS4Alert.toString~"'");
}	
