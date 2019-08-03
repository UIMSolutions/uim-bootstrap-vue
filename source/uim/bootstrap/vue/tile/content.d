module uim.bootstrap.vue.tile.content;

public import uim.bootstrap.vue;

static this() {
    import uim.bootstrap.vue.tile;
    vueTileContent = VUEComponent
.script(`
export default { name: "FdTileContent" };
`)
.template_(`
<div class="fd-tile__content"><slot /></div>
`);
}
unittest {
    
}