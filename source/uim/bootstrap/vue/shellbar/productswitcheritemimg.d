module uim.bootstrap.vue.shellbar.productswitcheritemimg;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue;
    vueShellBarProductSwitcherItemImg = VUEComponent.
        template_(`
<span class="fd-product-switcher__product-icon" v-on="$listeners">
  <slot>
    <img :src="src" v-bind="$attrs" />
  </slot>
</span>`)
        .script(`
export default {
  name: "FdShellBarProductSwitcherItemImg",
  inheritAttrs: false,
  props: {
    src: String
  }
};`); 
}
unittest {
    
}