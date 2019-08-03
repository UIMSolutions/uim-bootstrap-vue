module uim.bootstrap.vue.breadcrumb.breadcrumb;

public import uim.bootstrap.vue;

// The breadcrumb allows users to see the current page and navigation path to that page.
static this() {
    uim.bootstrap.vue.
    vueBreadcrumb = VUEComponent.
        template_(`
<ul class="fd-breadcrumb">
    <!-- one or more 'fd-breadcrumb-item''s -->
    <slot />
</ul>
  `)
        .script(`
export default {
    name: "FdBreadcrumb"
};
    `); 
}

unittest {
}