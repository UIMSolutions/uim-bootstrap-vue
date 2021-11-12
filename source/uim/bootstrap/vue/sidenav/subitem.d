module uim.bootstrap.vue.sidenav.subitem;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue.sidenav;
    vueSideNavSubItem = VUEComponent
        .script(`
export default {
  name: "FdSideNavSubItem"
};
`)
.template_(`
  <li class="fd-side-nav__subitem">
    <slot />
  </li>
  `);
}
unittest {
    
}