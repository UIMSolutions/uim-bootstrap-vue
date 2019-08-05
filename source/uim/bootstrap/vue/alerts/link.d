module uim.bootstrap.vue.alerts.link;

public import uim.bootstrap.vue;

class DBV5AlertLink : DVUEComponent {
  this() {
    this
    .name("UimAlertLink")
    .props("href", `{ type: String, default: '#' }`)
    .computed("classes()", `return [
    "alert-link"]`)
    .template_(`<a href="this.href" :class="this.classes"><slot /></a>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"AlertLink");

unittest {
  assert(DBV5AlertLink.name == "UimAlertLink");
  assert(DBV5AlertLink.name("test").name == "test");
}
