module uim.bootstrap.vue.mixins.uid;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue.mixins;
    vueUid = VUEMixin.content(`
import { shortUuid } from "./ShortUuid.js";

export default {
  props: {
    uid: {
      type: String,
      default: shortUuid
    }
  }
};
`);
}

