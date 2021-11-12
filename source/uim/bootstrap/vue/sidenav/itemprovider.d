module uim.bootstrap.vue.sidenav.itemprovider;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue.sidenav;
    vueSideNavItemProvider = VUEComponent
        .script(`
export default {
  props: {
    item: {
      type: Object,
      required: true
    }
  },
  provide() {
    return {
      fdItemProvider: this.fdItemProvider
    };
  },
  render() {
    return this.$scopedSlots.default();
  },
  watch: {
    item: {
      immediate: true,
      handler(newItem) {
        this.fdItemProvider.item = newItem;
      }
    }
  },
  data() {
    return {
      fdItemProvider: {
        item: this.item
      }
    };
  }
};
`);
}
unittest {
    
}