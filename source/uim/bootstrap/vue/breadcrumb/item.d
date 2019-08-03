module uim.bootstrap.vue.breadcrumb.item;

public import uim.bootstrap.vue;

// A breadcrumb item renders a single items and is used in combination with `fd-breadcrumb`. All attributes will be passed down to the anchor-tag that is rendered on your behalf.
static this() {
    uim.bootstrap.vue.
    vueBreadcrumbItem = VUEComponent
        .script(`
import { withTargetLocation } from "./../../mixins";
export default {
  name: "FdBreadcrumbItem",
  inheritAttrs: false,
  mixins: [withTargetLocation()],
  computed: {
    attrs() {
      return {
        href: "#",
        ...this.$attrs
      };
    }
  }
};        `) 
      .template_(`
<li class="fd-breadcrumb__item">
    <a class="fd-breadcrumb__link" @click="pushLocationIfPossible" v-bind="attrs" v-on="$listeners">
      <!-- Anchor tag content -->
      <slot />
    </a>
  </li>        `);
}
unittest {
    
}