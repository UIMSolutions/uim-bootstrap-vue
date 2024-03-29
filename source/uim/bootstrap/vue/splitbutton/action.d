module uim.bootstrap.vue.splitbutton.action;

public import uim.bootstrap.vue;

@safe: 
static this() {
     import uim.bootstrap.vue.splitbutton;
    vueSplitButtonAction = VUEComponent
        .script(`
import FdButton from "./../Button/Button.vue";

export default {
  name: "FdSplitButtonAction",
  components: { FdButton },
  inject: ["splitButton"],
  computed: {
    state() {
      return this.splitButton.state;
    },
    type() {
      return this.splitButton.type;
    },
    styling() {
      return this.splitButton.styling;
    },
    compact() {
      return this.splitButton.disacompactbled;
    },
    icon() {
      return this.splitButton.icon;
    }
  }
};`)
        .template_(`
<fd-button
    v-bind="$attrs"
    v-on="$listeners"
    :state="state"
    :type="type"
    :styling="styling"
    :compact="compact"
    :icon="icon"
  >
    <slot />
  </fd-button>`);
}
unittest {
    
}