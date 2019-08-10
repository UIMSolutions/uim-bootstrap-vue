module uim.bootstrap.vue.listgroups.item;

import uim.bootstrap.vue;

class DBV5ListGroupItem : DVUEComponent {
	this() {
		this
		.name("UimListGroupItem")
	    .props("color", `{ type: String, default: "none", validator: value => ["none", "primary", "secondary", "success", "danger", "warning", "info", "light", "dark"].indexOf(value) >= 0 }`)
		.computed("classes()", `return ['list-group-item',
		this.color !== "none" ? 'btn--'+this.color : '',
		];`)
    	.template_(`<li :class="this.classes"><slot /></li>`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"ListGroupItem");

unittest {
  assert(BV5ListGroupItem.name == "UimListGroupItem");
  assert(BV5ListGroupItem.name("test").name == "test");
}	
