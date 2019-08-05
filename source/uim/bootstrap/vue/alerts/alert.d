module uim.bootstrap.vue.alerts.alert;

public import uim.bootstrap.vue;

// Alerts provide messages within the application that are color-coded to emphasize the level of urgency. Supports 'v-model'.
class DBV5Alert : DVUEComponent {
  this() {
        this.template_(`
<transition name="fade">
    <div :id="uid" v-show="currentVisible" :class="classes" role="alert">
      <button
        v-if="dismissible"
        class="fd-alert__close"
        :aria-controls="uid"
        aria-label="Close"
        @click="dismiss"
      />
      <!-- Content of the alert. -->
      <slot />
    </div>
  </transition>        `)
        .script(`
import { Uid } from "./../../mixins";

export default {
  name: "FdAlert",
  model: {
    prop: "visible",
    event: "visible"
  },
  mixins: [Uid],
  watch: {
    visible: {
      immediate: true,
      handler(visible) {
        this.currentVisible = visible;
        // Fire when the visibility of the alert changed.
        // @arg 'true' if the alert becamse visible – otherwise #false'.
        this.$emit("visible", this.currentVisible);
      }
    }
  },
  props: {
    // If 'true', a close button is rendered that closes the alert.
    dismissible: {
      type: Boolean,
      default: true
    },
    // If 'true' the alert is displayed.
    visible: {
      type: Boolean,
      default: true
    },
    // Type of the alert.
    type: {
      // 'default' / 'warning' / 'error' / 'information' / 'success'
      type: String,
      default: "default",
      validator: value => {
        return ["default", "warning", "error", "information", "success"].indexOf(value) >= 0;
      }
    }
  },
  methods: {
    // @vuese
    // Used to manually dismiss the alert.
    dismiss() {
      this.currentVisible = false;
      // Fired once the alert has been dismissed.
      this.$emit("dismiss");
    }
  },
  computed: {
    classes() {
      const type = this.type === "default" ? [] : ['fd-alert--${this.type}'];
      const dismissible = this.dismissible ? [] : ["fd-alert--dismissible"];
      return ["fd-alert", ...type, ...dismissible];
    }
  },
  data() {
    return {
      currentVisible: this.visible
    };
  }
};
    `); 
  }
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Alert");

unittest {
  assert(BV5Alert);
  assert(BV5Alert.name("test").name == "test");
}
/* 

		_name = "bsv-alert";
		_props["color"] = "String";
		_render = initVueVars~
				jsIfElse("this.color", "classes.push('alert-'+this.color);", "classes.push('alert-primary');")~
				createVueElement("div", ["alert"]);
        */