module uim.bootstrap.vue.legend;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vueLegend = VUEComponent
      .script(`
export default {
  name: "FdLegend"
};`)
      .template_(`
<legend class="fd-form__legend">
    <slot />
  </legend>`);
}
unittest {
    
}