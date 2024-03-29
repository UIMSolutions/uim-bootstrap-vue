module uim.bootstrap.vue.sidenav.item;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue.sidenav;
    vueSideNavItem = VUEComponent
        .script(`
import Vue from "vue";
import FdSideNavSubList from "./SideNavSubList.vue";
import { normalizedChildren } from "./Model/normalize-items";

export default {
  name: "FdSideNavItem",
  components: { FdSideNavSubList },
  provide() {
    return {
      sideNavItem: Vue.observable({
        id: this.item.id,
        expandable: this.expandable
      })
    };
  },
  inject: ["fdItemProvider", "sideNavStore"],
  computed: {
    item() {
      return this.fdItemProvider.item;
    },
    expandable() {
      return this.hasChildItems;
    },
    hasChildItems() {
      return this.childItems.length > 0;
    },
    childItems() {
      return normalizedChildren(this.item);
    },
    itemId() {
      return this.item.id;
    },
    store() {
      return this.sideNavStore;
    }
  }
};
`)
.template_(`
  <li class="fd-side-nav__item">
    <slot />
    <fd-side-nav-sub-list :items="childItems">
      <template #subItem="subItem">
        <slot name="subItem" v-bind="subItem" />
      </template>
    </fd-side-nav-sub-list>
  </li>
  `);
}
unittest {
    
}