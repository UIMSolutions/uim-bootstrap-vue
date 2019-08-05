module uim.bootstrap.vue.alerts.alert;

public import uim.bootstrap.vue;

// Alerts provide messages within the application that are color-coded to emphasize the level of urgency. Supports 'v-model'.
class DBV5Alert : DVUEComponent {
  this() {
    this
    .name("UimAlert")
    .props("color", `{ type: String, default: "none", validator: value => ["none","primary", "secondary", "success", "danger", "warning", "info", "light", "dark", "link"].indexOf(value) >= 0 }`)
    .computed("classes()", `return [
    "alert",
    (this.color !== "none") && (this.outline === "none") ? 'alert-'+this.color : ''
    ]`)
    .template_(`<div :class="this.classes"><slot /></div>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Alert");

unittest {
  assert(BV5Alert.name == "UimAlert");
  assert(BV5Alert.name("test").name == "test");
}
/* 

		_name = "bsv-alert";
		_props["color"] = "String";
		_render = initVueVars~
				jsIfElse("this.color", "classes.push('alert-'+this.color);", "classes.push('alert-primary');")~
				createVueElement("div", ["alert"]);
        */