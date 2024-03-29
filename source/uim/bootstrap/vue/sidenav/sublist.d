module uim.bootstrap.vue.sidenav.sublist;

import uim.bootstrap.vue;
@safe: 

static this() {
    import uim.bootstrap.vue.sidenav;
    vueSideNavSubList = VUEComponent
        .script(`
import FdSideNavSubItemProvider from "./SideNavSubItemProvider";
import { normalizedId } from "./Model/normalize-items";

export default {
  name: "FdSideNavSubList",
  inject: ["fdItemProvider", "sideNavStore"],
  components: { FdSideNavSubItemProvider },
  props: {
    items: { type: Array, default: () => [] }
  },
  methods: {
    keyFor(item) {
      return normalizedId(item);
    }
  },
  computed: {
    parentItem() {
      return this.fdItemProvider.item;
    },
    parentId() {
      return normalizedId(this.parentItem);
    },
    store() {
      return this.sideNavStore;
    },
    hidden() {
      return !this.store.itemWithIdIsExpanded(this.parentId);
    }
  }
};
`)
.template_(`
  <ul class="fd-side-nav__sublist" :aria-hidden="String(hidden)">
    <slot />

    <fd-side-nav-sub-item-provider
      v-for="subItem in items"
      :key="keyFor(subItem)"
      :subItem="subItem"
    >
      <slot name="subItem" v-bind="subItem" />
    </fd-side-nav-sub-item-provider>
  </ul>
  `);
}
unittest {
    
}