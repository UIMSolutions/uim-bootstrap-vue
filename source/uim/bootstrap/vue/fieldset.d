module uim.bootstrap.vue.fieldset;

public import uim.bootstrap.vue;

@safe: 
static this() {
    uim.bootstrap.vue.
    vueFieldSet = VUEComponent.
        template_(`
  <fieldset class="fd-form__set">
    <slot />
  </fieldset>`)
        .script(`
export default {
  name: "FdFieldSet"
};`); 
}
unittest {
    
}