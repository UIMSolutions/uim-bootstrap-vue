module uim.bootstrap.vue;

// libraries
public import uim.core;
public import uim.oop;
public import uim.web;
public import uim.html;
public import uim.vue;
public import uim.bootstrap;
public import uim.javascript;

public import uim.bootstrap.vue.layout;
public import uim.bootstrap.vue.components;

public import uim.bootstrap.vue.alerts;
public import uim.bootstrap.vue.breadcrumb;
public import uim.bootstrap.vue.button;
public import uim.bootstrap.vue.combobox;
public import uim.bootstrap.vue.context;
public import uim.bootstrap.vue.datepicker;
public import uim.bootstrap.vue.form;
public import uim.bootstrap.vue.mixins;
public import uim.bootstrap.vue.shellbar;
public import uim.bootstrap.vue.splitbutton;
public import uim.bootstrap.vue.tile;

DVUEComponent vueActionBar;
DVUEComponent vueBadge;
DVUEComponent vueCalendar;
DVUEComponent vueContextButton;
DVUEComponent vueContextMenu;
DVUEComponent vueCounter;
DVUEComponent vueDateInput;
DVUEComponent vueDropdown;
DVUEComponent vueDropdownControl;
DVUEComponent vueFieldSet;
DVUEComponent vueIdentifier;
DVUEComponent vueInlineHelp;
DVUEComponent vueMenuItem;
DVUEComponent vueMenuLink;
DVUEComponent vueLegend;
DVUEComponent vuePanelGrid;
DVUEComponent vuePopover;
DVUEComponent vueSection;
DVUEComponent vueSideNav;
DVUEComponent vueSpinner;
DVUEComponent vueStatus;
DVUEComponent vueTabItem;
DVUEComponent vueTabs;

string initVueVars() {
	return `var tag='';`~
		`var classes=[];`~
			`var attributes={};`~
			`var styles={};`~
			`var content=[];`~
			`var options={};`;
}

string createVueElement() {
	return createVueElement(null, null, null, null);
}
string createVueElement(string tag) {
	return createVueElement(tag, null, null, null);
}
string createVueElement(string tag, string[] classes) {
	return createVueElement(tag, classes, null, null);
}
string createVueElement(string tag, string[string] attributes) {
	return createVueElement(tag, null, attributes, null);
}
string createVueElement(string tag, string[] classes, string[string] attributes) {
	return createVueElement(tag, classes, attributes, null);
}
string createVueElement(string tag, string[] classes, string[string] attributes, string[string] styles) {
	string results;
	if (tag) results ~=`tag='`~tag~`';`;
	foreach(c; classes) results~=`classes.push('`~c~`');`;
	foreach(k,v; attributes) results~=`attributes.`~k~`='`~v~`';`;
	foreach(k,v; styles) results~=`styles.`~k~`='`~v~`';`;
	results ~= jsIf("classes.length > 0", "options.class=classes;");
	results ~= jsIf("Object.keys(attributes).length > 0", "options.attrs=attributes;");
	results ~= jsIf("Object.keys(styles).length > 0", "options.style=styles;");
	results ~= `return createElement(tag, options, content);`;
	return results;
}

string registerAll() {
	return 
			vueGlobalRegisterAlerts~
			vueGlobalRegisterBadges~
			//vueGlobalRegisterButtons~
			vueGlobalRegisterCards~
			vueGlobalRegisterCarousels~
			vueGlobalRegisterDropdowns~
			vueGlobalRegisterForms~
			vueGlobalRegisterJumbotrons~
			vueGlobalRegisterNavs~
			vueGlobalRegisterNavbars~
			vueGlobalRegisterLists~
			vueGlobalRegisterModals~
			vueGlobalRegisterProgresses~
			vueGlobalRegisterTabs~
			vueGlobalRegisterTables~
			BSVRow.globalRegistration~
			BSVContainer.globalRegistration~
			"";
}

string registerComponents(DVUEComponent[] components) {
	string result;
	foreach(c; components) result~= c.globalRegistration;
	return result;
}
