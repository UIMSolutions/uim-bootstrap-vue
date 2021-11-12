module uim.bootstrap.vue.tile.tile;

public import uim.bootstrap.vue;

// A tile component can be used to display information in a simple container format. This component is ideal for displaying collection data when a grid or list layout is preferred. See `fd-tile-grid` and `fd-virtualized-list`.
@safe: 
static this() {
    import uim.bootstrap.vue.tile;
    vueTile = VUEComponent
        .script(`
 export default {
  name: "FdTile",
  props: {
    transparent: { type: Boolean, default: false },
    isButton: { type: Boolean, default: false },
    disabled: { type: Boolean, default: false },
    rowSpan: { type: Number, default: null },
    colSpan: { type: Number, default: null }
  },
  methods: {
    handleClick(event) {
      if (this.disabled || !this.isButton) {
        return;
      }
      this.$emit("click", event);
    }
  },
  computed: {
    listeners() {
      return {
        ...this.$listeners,
        click: this.handleClick
      };
    },
    classes() {
      return [
        this.transparent ? "fdv-tile--transparent" : "",
        this.rowSpan != null ? 'fd-has-grid-row-span-${this.rowSpan}' : "",
        this.colSpan != null ? 'fd-has-grid-column-span-${this.colSpan}' : ""
      ];
    }
  }
};`
 )
.template_(`
    <div
    class="fd-tile"
    :class="classes"
    :role="isButton ? 'button' : null"
    :aria-disabled="String(disabled)"
    v-on="listeners"
  >
    <slot />
  </div>
  `);
}
unittest {
    
}