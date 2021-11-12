module uim.bootstrap.vue.mixins.icon;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue.mixins;
    vueIcon = VUEMixin.content(`
import { iconClasses } from "./IconClass.js";

export default {
  props: {
    icon: {
      type: String,
      default: null
    },
    iconSize: {
      type: String,
      default: null,
      validator(size) {
        return ["s", "m", "l", "xl"].indexOf(size) >= 0;
      }
    }
  },
  computed: {
    // We are always returning an array of class names.
    // This is done because of the following reasons:
    // - By returning an array we can return an empty array in case icon is null.
    //   This makes it easier for consumers to use this mixin.
    iconClasses() {
      return iconClasses(this.icon, this.iconSize);
    }
  }
};
    `);
}