module uim.bootstrap.vue.buttons.group;

public import uim.bootstrap.vue;

// Group a series of buttons together on a single line with the button group. You use this in combincation with `fd-button-group-button`.
static this() {
  import uim.bootstrap.vue.buttons;
    vueButtonGroup = VUEComponent
    .name("UimButtonGroup")
    .props("orientation", `{ type: String, default: "horizontal", validator: value => ["horizontal", "vertical"].indexOf(value) >= 0 }`)
    .props("size", `{ type: String, default: "normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0 }`)
    .computed("classes()", `return [
    this.orientation === "horizontal" ? "btn-group" : "btn-group-vertical",
    this.size !== "normal" ? 'btn-group-'+this.size : ""];`)
    .template_(`<div :class="this.classes" role="group" aria-label="Basic example"><slot /></div>`)
; 
}
unittest {
    
}