module uim.bootstrap.vue.shellbar.action;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vueShellBarAction = VUEComponent.
        template_(`
    <div :class="classes"><slot /></div>`)
        .script(`
export default {
  name: "FdShellBarAction",
  props: {
    showAlways: { type: Boolean, default: true },
    collapsible: { type: Boolean, default: false }
  },
  computed: {
    classes() {
      return {
        "fd-shellbar__action": true,
        "fd-shellbar__action--show-always": this.showAlways,
        "fd-shellbar__action--collapsible": this.collapsible
      };
    }
  }
};`); 
}
unittest {
    
}