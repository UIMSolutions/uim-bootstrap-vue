module uim.bootstrap.vue.components.dropdowns;

public import uim.bootstrap.vue.components.dropdowns.button;
public import uim.bootstrap.vue.components.dropdowns.divider;
public import uim.bootstrap.vue.components.dropdowns.dropdown;
public import uim.bootstrap.vue.components.dropdowns.header;
public import uim.bootstrap.vue.components.dropdowns.link;
public import uim.bootstrap.vue.components.dropdowns.menu;
public import uim.bootstrap.vue.components.dropdowns.text;
public import uim.bootstrap.vue.components.dropdowns.toggle;

string vueGlobalRegisterDropdowns() {
	return 
		BSVDropdownButton.globalRegistration~
			BSVDropdownHeader.globalRegistration~
			BSVDropdownLink.globalRegistration~
			BSVDropdownDivider.globalRegistration~
			BSVDropdownText.globalRegistration~
			BSVDropdownMenu.globalRegistration~
			BSVDropdownToggle.globalRegistration~
			BSVDropdown.globalRegistration;
}