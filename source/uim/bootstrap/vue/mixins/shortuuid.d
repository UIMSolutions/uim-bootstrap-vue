module uim.bootstrap.vue.mixins.shortuuid;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue.mixins;
    vueShortUuid = VUEMixin.content(`
export const shortUuid = () => {
  let text = "";
  const possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  for (let i = 0; i < 5; i++) {
    text += possible.charAt(Math.floor(Math.random() * possible.length));
  }
  return text;
};

`);
}

