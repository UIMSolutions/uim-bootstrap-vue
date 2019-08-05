module uim.bootstrap.vue.badges.badge;

import uim.bootstrap.vue;

class DBV5Badge: DVUEComponent {
  this() {
    this
    .name("UimBadge")
    .props("color", `{ type: String, default: "none", validator: value => ["none","primary", "secondary", "success", "danger", "warning", "info", "light", "dark"].indexOf(value) >= 0 }`)
    .props("pill", `{ type: Boolean, default: false }`)
    .computed("classes()", `return [
    "badge",
    this.color !== "none" ? 'badge-'+this.color : '',
    this.pill ? 'badge-pill' : ''
    ]`)
    .template_(`<span :class="this.classes"><slot /></span>`);
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Badge");

/*		_render = initVueVars~
			`content=this.$slots.default;`~ 
				jsIf("this.color", "classes.push('badge-'+this.color);")~
				jsIf("this.pill", "classes.push('badge-pill');")~
				createVueElement("span", ["badge"]);
*/