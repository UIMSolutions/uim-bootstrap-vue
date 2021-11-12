module uim.bootstrap.vue.shellbar.product;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vueShellBarProduct = VUEComponent
      .script(`
import FdShellBarProductTitle from "./ShellBarProductTitle.vue";

export default {
  name: "FdShellBarProduct",
  components: { FdShellBarProductTitle },
  props: { productTitle: { type: String, default: null } }
};`)
      .template_(`
  <div class="fd-shellbar__product">
    <FdShellBarProductTitle v-if="productTitle != null">{{ productTitle }}</FdShellBarProductTitle>
    <slot />
  </div>`);
}
unittest {
    
}