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

public import uim.bootstrap.vue.alerts;
public import uim.bootstrap.vue.badges;
public import uim.bootstrap.vue.blockquotes;
public import uim.bootstrap.vue.breadcrumbs;
public import uim.bootstrap.vue.buttons;
public import uim.bootstrap.vue.cards;
public import uim.bootstrap.vue.combobox;
public import uim.bootstrap.vue.context;
public import uim.bootstrap.vue.datepicker;
public import uim.bootstrap.vue.dropdowns;
public import uim.bootstrap.vue.forms;
public import uim.bootstrap.vue.jumbotrons;
public import uim.bootstrap.vue.modals;
public import uim.bootstrap.vue.mixins;
public import uim.bootstrap.vue.navbars;
public import uim.bootstrap.vue.navs;
public import uim.bootstrap.vue.paginations;
public import uim.bootstrap.vue.popovers;
public import uim.bootstrap.vue.shellbar;
public import uim.bootstrap.vue.splitbutton;
public import uim.bootstrap.vue.tile;
public import uim.bootstrap.vue.tooltips;

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

/*string registerAll() {
	return 
			// vueGlobalRegisterAlerts~
			//vueGlobalRegisterBadges~
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
			BV5Row.globalRegistration~
			BV5Container.globalRegistration~
			"";
}
*/
string registerComponents(DVUEComponent[] components) {
	string result;
	foreach(c; components) result~= c.globalRegistration;
	return result;
}

template BV5Shortcut(string name) {
	const char[] BV5Shortcut = `
auto BV5`~name~`() { return new DBV5`~name~`(); }
auto BV5`~name~`(string aName) { return new DBV5`~name~`(aName); }
auto BV5`~name~`(DVUEApp anApp) { return new DBV5`~name~`(anApp); }
auto BV5`~name~`(DVUEApp anApp, string aName) { return new DBV5`~name~`(anApp, aName); }
`; 
}