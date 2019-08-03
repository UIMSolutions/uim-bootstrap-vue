module uim.bootstrap.vue.shellbar.usermenucontrol;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue;
    vueShellBarUserMenuControl = VUEComponent
      .script(`
import FdIdentifier from "./../../Identifier/Identifier.vue";

export default {
  name: "FdShellBarUserMenuControl",
  components: { FdIdentifier }
};`)
      .template_(`
<div class="fd-user-menu__control" role="button" v-on="$listeners">
    <slot>
      <fd-identifier size="s" backgroundColor="accent-6" circle icon="person-placeholder" />
    </slot>
  </div>`);
}
unittest {
    
}