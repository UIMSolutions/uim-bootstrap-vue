module uim.bootstrap.vue.mixins.withtargetlocation;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue.mixins;
    vueWithTargetLocation = VUEMixin.content(`
import { warn } from "./../core";
import { noop } from "./../util";

export default (defaultTo = null) => ({
  props: {
    to: { type: [String, Object], default: defaultTo }
  },
  methods: {
    pushLocationIfPossible(event, onComplete = noop) {
      if (this.to == null || this.$router == null) {
        return;
      }
      this.pushLocation(event, onComplete);
    },
    pushLocation(event, onComplete = noop) {
      if (event) {
        event.preventDefault();
        event.stopPropagation();
      }
      const { to, $router } = this;
      if (to == null) {
        warn("Tried to navigate to push location but no location was provided.");
        return;
      }
      if ($router == null) {
        warn('Tried to navigate to ${to} but $router not found.');
        return;
      }
      $router.push(to, onComplete);
      if (event != null) {
        this.$emit("click", event);
      } else {
        this.$emit("click");
      }
    }
  }
});
    `);
}