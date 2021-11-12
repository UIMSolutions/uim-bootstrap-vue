module uim.bootstrap.vue.mixins.compactable;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue.mixins;
    vueCompactable = VUEMixin.content(`
export default {
  inject: {
    $_FdCompactMixin: {
      default: null
    }
  },

  props: {
    compact: {
      type: Boolean,
      default: false
    }
  },

  computed: {
    finalCompact() {
      return this.compact || (this.$_FdCompactMixin && this.$_FdCompactMixin.data.value);
    }
  }
};

`);
}

