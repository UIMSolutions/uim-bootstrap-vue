module uim.bootstrap.vue.spinner;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vueSpinner = VUEComponent.
        template_(`
<div class="fd-spinner" aria-hidden="false" :aria-label="ariaLabel">
  <div />
</div>`)
        .script(`
export default {
  name: "FdSpinner",
  props: {
    ariaLabel: { type: String, default: "Loading" }
  }
};`); 
}
unittest {
    
}