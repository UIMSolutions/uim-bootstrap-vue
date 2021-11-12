module uim.bootstrap.vue.shellbar.producttitle;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vueShellBarProductTitle = VUEComponent.
        template_(`
  <span class="fd-shellbar__title">
    <slot />
  </span>`)
        .script(`
export default {
  name: "FdShellBarProductTitle"
};`); 
}
unittest {
    
}