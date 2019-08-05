module uim.bootstrap.vue.forms.label;

public import uim.bootstrap.vue;


static this() {
    uim.bootstrap.vue.
    vueFormLabel = VUEComponent.
        template_(`
<label class="fd-form__label" :for="itemId" :aria-required="String(required)">
    <slot name="control" />
    <slot />
    <template v-if="required">
      *
    </template>
  </label>`)
        .script(`
export default {
  name: "FdFormLabel",
  inject: {
    itemId: { default: null }
  },
  props: {
    inline: {
      type: Boolean,
      default: false
    },
    required: {
      default: false,
      type: Boolean
    }
  }
};`); 
}
unittest {
    
}