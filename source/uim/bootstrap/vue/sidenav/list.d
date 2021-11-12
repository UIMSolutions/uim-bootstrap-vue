module uim.bootstrap.vue.sidenav.list;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue.sidenav;
    vueSideNavList = VUEComponent
        .script(`
import normalizeItems, { normalizedId } from "./Model/normalize-items";
import FdSideNavItemProvider from "./SideNavItemProvider";

export default {
  name: "FdSideNavList",
  components: {
    FdSideNavItemProvider
  },
  props: {
    items: { type: Array, default: () => [] }
  },
  computed: {
    normalizedItems() {
      return normalizeItems(this.items);
    }
  },
  methods: {
    keyFor(item) {
      return normalizedId(item);
    }
  }
};
`)
.template_(`
  <ul class="fd-side-nav__list">
    <template>
      <fd-side-nav-item-provider v-for="item in normalizedItems" :key="keyFor(item)" :item="item">
        <slot name="item" v-bind="item" />
      </fd-side-nav-item-provider>
    </template>
  </ul>  `);
}
unittest {
    
}