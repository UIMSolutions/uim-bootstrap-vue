module uim.bootstrap.vue.combobox.menu;

public import uim.bootstrap.vue;

static this() {
    uim.bootstrap.vue.
    vueComboboxMenu = VUEComponent.
        template_(`
<fd-menu @select="selectItem">
    <slot />
  </fd-menu>        `)
        .script(`
import FdMenu from "./../Menu/Menu.vue";
export default {
  name: "FdComboboxMenu",
  inject: ["combobox"],
  components: { FdMenu },
  methods: {
    selectItem(item) {
      this.combobox.selectItem(item);
    }
  }
};        `); 
}
unittest {
    
}