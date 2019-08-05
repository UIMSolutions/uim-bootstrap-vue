module uim.bootstrap.vue.forms.message;

public import uim.bootstrap.vue;

static this() {
    uim.bootstrap.vue.
    vueFormMessage = VUEComponent.
        template_(`
<span :class="classes">
    <slot />
  </span>`)
        .script(`
const typeMapping = {
  error: "error",
  warning: "warning",
  help: "help"
};
const MessageTypes = Object.keys(typeMapping);
const isMessageType = value => MessageTypes.indexOf(value) >= 0;

export default {
  name: "FdFormMessage",
  props: {
    type: { default: null, type: String, validator: isMessageType }
  },
  computed: {
    classes() {
      const staticClass = "fd-form__message";
      return {
        [staticClass]: true,
        ['${staticClass}--${this.type || ""}']: this.type != null
      };
    }
  }
};`); 
}
unittest {
    
}