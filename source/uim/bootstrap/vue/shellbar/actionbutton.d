module uim.bootstrap.vue.shellbar.actionbutton;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue;
    vueShellBarActionButton = VUEComponent.
        template_(`
  <button v-on="$listeners" class="fd-button--shell" v-fd-icon="icon">
    <slot />
  </button>`)
        .script(`
import { Icon } from "./../../../mixins";
import icon from "./../../../directives/icon";

export default {
  name: "FdShellBarActionButton",
  mixins: [Icon],
  directives: {
    "fd-icon": icon
  }
};`); 
}
unittest {
    
}