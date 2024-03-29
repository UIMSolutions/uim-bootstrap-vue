module uim.bootstrap.vue.sidenav.subitemprovider;

import uim.bootstrap.vue;
@safe: 

static this() {
    import uim.bootstrap.vue.sidenav;
    vueSideNavSubItemProvider = VUEComponent
        .script(`
export default {
  props: {
    subItem: {
      type: Object,
      required: true
    }
  },
  provide() {
    return {
      fdSubItemProvider: this.fdSubItemProvider
    };
  },
  render() {
    return this.$scopedSlots.default();
  },
  watch: {
    subItem: {
      immediate: true,
      handler(newItem) {
        this.fdSubItemProvider.subItem = newItem;
      }
    }
  },
  data() {
    return {
      fdSubItemProvider: {
        subItem: this.subItem
      }
    };
  }
};
`);
}
unittest {
    
}