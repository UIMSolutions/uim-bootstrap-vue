module uim.bootstrap.vue.shellbar.actions;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue;
    vueShellBarActions = VUEComponent.
        template_(`
  <div class="fd-shellbar__actions"><slot /></div>`)
        .script(`
export default {
  name: "FdShellBarActions"
};`); 
}
unittest {
    
}