module uim.bootstrap.vue.tile.media;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue.tile;
    vueTileMedia = VUEComponent
        .script(`
  export default { name: "FdTileMedia" };`)
.template_(`
  <div class="fd-tile__media"><slot /></div>`);
}
unittest {
    
}