module uim.bootstrap.vue.splitbutton.auxiliary;

public import uim.bootstrap.vue;

static this() {
     import uim.bootstrap.vue.splitbutton;
    vueSplitButtonAuxiliary = VUEComponent
        .script(`
import FdButton from "./../Button/Button.vue";

export default {
  name: "FdSplitButtonAuxiliary",
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
    }
  }
};`)
        .template_(`
  <fd-button
    class="fd-button sap-icon--slim-arrow-down"
    aria-label="More"
    :state="state"
    :type="type"
    :styling="styling"
    :compact="compact"
    v-bind="$attrs"
    v-on="$listeners"
  >
    <slot />
  </fd-button>`);
}
unittest {
    
}