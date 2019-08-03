module uim.bootstrap.vue.sidenav.grouptile;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue.sidenav;
    vueSideNavGroupTitle = VUEComponent
        .script(`
export default {
  name: "FdSideNavGroupTitle"
};
`)
.template_(`
  <h1 class="fd-side-nav__title"><slot /></h1>
  `);
}
unittest {
    
}