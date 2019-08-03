module uim.bootstrap.vue.form.form;

public import uim.bootstrap.vue;

static this() {
    uim.bootstrap.vue.
    vueForm = VUEComponent.
        template_(`
<form>
    <slot />
  </form>        `)
        .script(`
export default {
  name: "FdForm"
};        `); 
}
unittest {
    
}