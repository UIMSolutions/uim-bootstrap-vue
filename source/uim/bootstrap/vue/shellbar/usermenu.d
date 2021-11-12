module uim.bootstrap.vue.shellbar.usermenu;

public import uim.bootstrap.vue;

@safe: 
static this() {
    import uim.bootstrap.vue;
    vueShellBarUserMenu = VUEComponent.
        template_(`
  <div class="fd-user-menu">
    <FdPopover ref="popover" with-arrow placement="bottom-end">
      <template #control="{toggle}">
        <slot name="control" :toggle="toggle">
          <fd-shell-bar-user-menu-control @click="toggle" />
        </slot>
      </template>
      <template #default>
        <slot />
      </template>
    </FdPopover>
  </div>`)
        .script(`
import FdPopover from "./../../Popover/Popover.vue";
import FdShellBarUserMenuControl from "./ShellBarUserMenuControl.vue";

export default {
  name: "FdShellBarUserMenu",
  components: { FdShellBarUserMenuControl, FdPopover },
  methods: {
    close() {
      this.popover().hide();
    },
    popover() {
      return this.$refs.popover;
    }
  }
};`); 
}
unittest {
    
}