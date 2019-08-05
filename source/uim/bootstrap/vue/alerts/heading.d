module uim.bootstrap.vue.alerts.heading;

public import uim.bootstrap.vue;

class DBV5AlertHeading : DVUEComponent {
  this() {
    this
    .name("UimAlertHeading")
    .computed("classes()", `return [
    "alert-heading"]`)
    .template_(`<h4 :class="this.classes"><slot /></h4>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"AlertHeading");

unittest {
  assert(DBV5AlertHeading.name == "UimAlertHeading");
  assert(DBV5AlertHeading.name("test").name == "test");
}
