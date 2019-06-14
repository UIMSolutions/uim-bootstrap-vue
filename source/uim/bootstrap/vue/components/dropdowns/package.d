module uim.bsv.components.dropdowns;

public import uim.bsv.components.dropdowns.button;
public import uim.bsv.components.dropdowns.divider;
public import uim.bsv.components.dropdowns.dropdown;
public import uim.bsv.components.dropdowns.header;
public import uim.bsv.components.dropdowns.link;
public import uim.bsv.components.dropdowns.menu;
public import uim.bsv.components.dropdowns.text;
public import uim.bsv.components.dropdowns.toggle;

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