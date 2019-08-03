module uim.bootstrap.vue.form.group;

public import uim.bootstrap.vue;

static this() {
    uim.bootstrap.vue.
    vueFormGroup = VUEComponent.
        template_(`
<div class="fd-form__group">
    <slot />
  </div>        `)
        .script(`
export default {
  name: "FdFormGroup",
  provide() {
    return {
      formGroup: this
    };
  },
  props: {
    inline: { type: Boolean, default: false }
  }
};`); 
}
unittest {
    
}