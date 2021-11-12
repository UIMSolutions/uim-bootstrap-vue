module uim.bootstrap.vue.panelgrid;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vuePanelGrid = VUEComponent
      .script(`
const PANEL_GRID_CLASS = "fd-panel-grid";

export default {
  name: "FdPanelGrid",
  props: {
    col: {
      type: Number,
      default: null,
      validator: value => value >= 2 && value <= 6
    },
    nogap: { type: Boolean, default: false }
  },
  computed: {
    classes() {
      const col = this.col;
      return [
        PANEL_GRID_CLASS,
        ...(col != null ? ['${PANEL_GRID_CLASS}--${col}col'] : []),
        ...(this.nogap ? ['${PANEL_GRID_CLASS}--nogap'] : [])
      ];
    }
  }
};`)
      .template_(`
  <div :class="classes">
    <slot />
  </div>`);
}
unittest {
    
}