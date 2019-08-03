module uim.bootstrap.vue.shellbar.productswitcheritem;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue;
    vueShellBarProductSwitcherItem = VUEComponent.
        template_(`
<li>
    <slot>
      <a :href="hrefForLink" @click.prevent="onClick">
        <ShellBarProductSwitcherItemImg :src="src" />
        <ShellBarProductSwitcherItemTitle>{{ title }}</ShellBarProductSwitcherItemTitle>
      </a>
    </slot>
  </li>`)
        .script(`
import ShellBarProductSwitcherItemImg from "./ShellBarProductSwitcherItemImg.vue";
import ShellBarProductSwitcherItemTitle from "./ShellBarProductSwitcherItemTitle.vue";
import { withTargetLocation } from "./../../../mixins";

export default {
  name: "FdShellBarProductSwitcherItem",
  mixins: [withTargetLocation()],
  components: {
    ShellBarProductSwitcherItemImg,
    ShellBarProductSwitcherItemTitle
  },
  props: {
    src: { type: String, default: "" },
    title: { type: String, default: "" },
    href: {
      type: String,
      required: false,
      default: "#"
    }
  },
  computed: {
    hrefForLink() {
      return this.href || "#";
    }
  },
  methods: {
    onClick(event) {
      if (this.to != null) {
        this.pushLocation(event);
        return;
      }
      this.$emit("click", this);
    }
  }
};`); 
}
unittest {
    
}