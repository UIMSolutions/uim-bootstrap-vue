module uim.bootstrap.vue.buttons.button;

public import uim.bootstrap.vue;

// Buttons allow users to perform actions.
class DBV5Button : DVUEComponent {
  this() {
    this
    .name("UimButton")
    .props("block", `{ type: Boolean, default: false }`)
    .props("color", `{ type: String, default: "none", validator: value => ["none","primary", "secondary", "success", "danger", "warning", "info", "light", "dark", "link"].indexOf(value) >= 0 }`)
    .props("active", `{ type: Boolean, default: false }`)
    .props("disabled", `{ type: Boolean, default: false }`)
    .props("outline", `{ type: String, default: "none", validator: value => ["none", "primary", "secondary", "success", "danger", "warning", "info", "light", "dark"].indexOf(value) >= 0 }`)
    .props("size", `{ type: String, default: "normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0 }`)
    .props("type", `{ type: String, default: "button", validator: value => ["button", "submit", "reset", "menu"].indexOf(value) >= 0 }`)
    .methods("click(event)", `if (this.state === "disabled") { event.stopImmediatePropagation(); return; } this.$emit("click", event);`)
    .computed("classes()", `return [
    "btn",
    this.block ? 'btn-block' : '',
    (this.color !== "none") && (this.outline === "none") ? 'btn-'+this.color : '',
    (this.active) && (!this.disabled) ? 'active' : '',
    this.disabled ? 'disabled' : '',
    this.outline !== "none" ? 'btn-outline-'+this.outline : '',
    this.size !== "normal" ? 'btn-'+this.size : ""];`)
    .template_(`<button :type="this.type" :class="this.classes" @click="click" :aria-pressed="this.active"><slot /></button>`);
  }
}
auto BV5Button() { return new DBV5Button; }
unittest {    
  assert(BV5Button.name == "UimButton");
  assert(BV5Button.name("test").name == "test");
  assert(BV5Button.template_ == `<button :type="this.type" :class="this.classes" @click="click" :aria-pressed="this.active"><slot /></button>`);
}

/*
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.color", "classes.push('btn-'+(this.color);")~
				jsIf("this.outlineColor", "classes.push('btn-outline-'+(this.outlineColor);")~
				jsIf("this.size", "classes.push('btn-'+(this.size);")~
				jsIf("this.block", "classes.push('btn-block');")~
				jsIf("this.btnType === 'link'", createVueElement("a", ["role":"button"]))~
				jsIf("this.btnType === 'input'", createVueElement("input", ["type":"button"]))~
				createVueElement("button", ["btn"], ["type":"button"]);
*/