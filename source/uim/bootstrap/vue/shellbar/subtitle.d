module uim.bootstrap.vue.shellbar.subtitle;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vueShellBarSubTitle = VUEComponent
      .script(`
export default {
  name: "FdShellBarSubtitle"
};`)
      .template_(`
  <span class="fd-shellbar__subtitle">
    <slot />
  </span>`);
}
unittest {
    
}