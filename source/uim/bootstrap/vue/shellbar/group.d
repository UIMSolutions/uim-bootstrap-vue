module uim.bootstrap.vue.shellbar.group;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue;
    vueShellBarGroup = VUEComponent.
        template_(`
  <div :class="classes">
    <slot />
  </div>`)
        .script(`
const positionMapping = {
  start: "start",
  middle: "middle",
  end: "end"
};
const Positions = Object.keys(positionMapping);
const isPosition = value => Positions.indexOf(value) >= 0;

export default {
  name: "FdShellBarGroup",
  props: {
    position: { type: String, validator: isPosition }
  },
  computed: {
    classes() {
      return ['fd-shellbar__group fd-shellbar__group--${this.position}'];
    }
  }
};`); 
}
unittest {
    
}