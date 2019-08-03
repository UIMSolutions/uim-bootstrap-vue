module uim.bootstrap.vue.sidenav.icon;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue.sidenav;
    vueSideNavIcon = VUEComponent
        .script(`
import { Icon } from "./../../mixins";

export default {
  name: "FdSideNavIcon",
  mixins: [Icon]
};
`)
.template_(`
  <span class="fd-side-nav__icon" :class="iconClasses" role="presentation" />
  `);
}
unittest {
    
}