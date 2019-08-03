module uim.bootstrap.vue.sidenav.group;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue.sidenav;
    vueSideNavGroup = VUEComponent
        .script(`
export default {
  name: "FdSideNavGroup"
};
`)
.template_(`
  <div class="fd-side-nav__group"><slot /></div>
  `);
}
unittest {
    
}