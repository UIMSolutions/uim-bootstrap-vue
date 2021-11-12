module uim.bootstrap.vue.shellbar.shellbar;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vueShellBar = VUEComponent.
        template_(`
  <div class="fd-shellbar"><slot /></div>`)
        .script(`
export default {
  name: "FdShellBar"
};`); 
}
unittest {
    
}