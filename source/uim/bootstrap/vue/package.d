module uim.bsv;

// libraries
public import uim.core;
public import uim.oop;
public import uim.web;
public import uim.html;
public import uim.vue;
public import uim.bootstrap;
public import uim.javascript;

public import uim.bsv.layout;
public import uim.bsv.components;
public import uim.bsv.component;

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
			vueGlobalRegisterButtons~
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

string registerComponents(DBSVComponent[] components) {
	string result;
	foreach(c; components) result~= c.globalRegistration;
	return result;
}
