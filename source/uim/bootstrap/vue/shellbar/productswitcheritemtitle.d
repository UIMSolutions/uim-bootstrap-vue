module uim.bootstrap.vue.shellbar.productswitcheritemtitle;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vueShellBarProductSwitcherItemTitle = VUEComponent.
        template_(`
<span class="fd-product-switcher__product-title">
    <slot />
  </span>`)
        .script(`
export default {
  name: "FdShellBarProductSwitcherItemTitle"
};`); 
}
unittest {
    
}