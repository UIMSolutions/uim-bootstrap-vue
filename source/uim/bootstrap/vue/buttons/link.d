module uim.bootstrap.vue.buttons.link;

public import uim.bootstrap.vue;

class DBV5ButtonLink : DVUEComponent {
  this() {
    this    
    .name("UimButtonLink")
    .props("block", `{ type: Boolean, default: false }`)
    .props("color", `{ type: String, default: "none", validator: value => ["none","primary", "secondary", "success", "danger", "warning", "info", "light", "dark", "link"].indexOf(value) >= 0 }`)
    .props("disabled", `{ type: Boolean, default: false }`)
    .props("href", `{ type: String, default: "#"`)
    .props("outline", `{ type: String, default: "none", validator: value => ["none", "primary", "secondary", "success", "danger", "warning", "info", "light", "dark"].indexOf(value) >= 0 }`)
    .props("size", `{ type: String, default: "normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0 }`)
    .props("type", `{ type: String, default: "button", validator: value => ["button", "submit", "reset", "menu"].indexOf(value) >= 0 }`)
    .methods("click(event)", `if (this.state === "disabled") { event.stopImmediatePropagation(); return; } this.$emit("click", event);`)
    .computed("classes()", `return [
    "btn",
    this.block ? 'btn-block' : '',
    (this.color !== "none") && (this.outline === "none") ? 'btn-'+this.color : '',
    this.disabled ? 'disabled' : '',
    this.outline !== "none" ? 'btn-outline-'+this.outline : '',
    this.size !== "normal" ? 'btn-'+this.size : ""];`)
    .template_(`<a :role="this.type" :class="this.classes" @click="click" :href="this.href"><slot /></a>`);
}
  this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ButtonLink");

unittest {
  assert(BV5ButtonLink.name == "UimButtonLink");
  assert(BV5ButtonLink.name("test").name == "test");
}