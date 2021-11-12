module uim.bootstrap.vue.tile.actions;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue.tile;
    vueTileActions = VUEComponent
.script(`
export default { name: "FdTileActions" };
`)
.template_(`
<div class="fd-tile__actions"><slot /></div>
`);
}
unittest {
    
}