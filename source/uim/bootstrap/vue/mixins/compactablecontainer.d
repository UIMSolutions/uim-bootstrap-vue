module uim.bootstrap.vue.mixins.compactablecontainer;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue.mixins;
    vueCompactableContainer = VUEMixin.content(`
export default {
  provide() {
    return {
      $_FdCompactMixin: {
        data: this.injectedCompactData
      }
    };
  },

  props: {
    compact: {
      type: Boolean,
      default: false
    }
  },

  data() {
    return {
      injectedCompactData: {
        value: this.compact
      }
    };
  },

  watch: {
    compact(value, oldValue) {
      if (value !== oldValue) {
        this.injectedCompactData.value = value;
      }
    }
  }
};
`);
}

