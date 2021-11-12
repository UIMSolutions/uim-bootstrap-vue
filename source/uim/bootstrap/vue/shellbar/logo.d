module uim.bootstrap.vue.shellbar.logo;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vueShellBarLogo = VUEComponent.
        template_(`
  <a class="fd-shellbar__logo" href="#" @click.prevent="pushLocationIfPossible" v-on="$listeners">
    <slot>
      <img :src="src" :srcset="srcset" v-bind="$attrs" />
    </slot>
  </a>`)
        .script(`
import { withTargetLocation } from "./../../../mixins";

export default {
  name: "FdShellBarLogo",
  mixins: [withTargetLocation("/")],
  inheritAttrs: false,
  props: {
    src: String,
    srcset: String
  }
};`); 
}
unittest {
    
}