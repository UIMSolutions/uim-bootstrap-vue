module uim.bootstrap.vue.components.buttons.button;

import uim.bootstrap.vue;

class DBSVButton: DBSVComponent {
	this() {
		super(); 

		_name = "bsv-button";
		this.props("color", "String")
		.props("outlineColor", "String")
		.props("btnType", "String")
		.props("size", "String")
		.props("block", "Boolean");

		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.color", "classes.push('btn-'+(this.color);")~
				jsIf("this.outlineColor", "classes.push('btn-outline-'+(this.outlineColor);")~
				jsIf("this.size", "classes.push('btn-'+(this.size);")~
				jsIf("this.block", "classes.push('btn-block');")~
				jsIf("this.btnType === 'link'", createVueElement("a", ["role":"button"]))~
				jsIf("this.btnType === 'input'", createVueElement("input", ["type":"button"]))~
				createVueElement("button", ["btn"], ["type":"button"]);
	}
}
auto BSVButton() { return new DBSVButton; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

//{
//	// Same API as `v-bind:class`, accepting either
//	// a string, object, or array of strings and objects.
//class: {
//	foo: true,
//			bar: false
//	},
//		// Same API as `v-bind:style`, accepting either
//		// a string, object, or array of objects.
//	style: {
//	color: 'red',
//			fontSize: '14px'
//	},
//		// Normal HTML attributes
//	attrs: {
//	id: 'foo'
//	},
//		// Component props
//	props: {
//	myProp: 'bar'
//	},
//		// DOM properties
//	domProps: {
//	innerHTML: 'baz'
//	},
//		// Event handlers are nested under `on`, though
//		// modifiers such as in `v-on:keyup.enter` are not
//		// supported. You'll have to manually check the
//		// keyCode in the handler instead.
//	on: {
//	click: this.clickHandler
//	},
//		// For components only. Allows you to listen to
//		// native events, rather than events emitted from
//		// the component using `vm.$emit`.
//	nativeOn: {
//	click: this.nativeClickHandler
//	},
//		// Custom directives. Note that the `binding`'s
//		// `oldValue` cannot be set, as Vue keeps track
//		// of it for you.
//		directives: [
//		{
//		name: 'my-custom-directive',
//				value: '2',
//				expression: '1 + 1',
//				arg: 'foo',
//			modifiers: {
//			bar: true
//			}
//		}
//	],
//		// Scoped slots in the form of
//		// { name: props => VNode | Array<VNode> }
//	scopedSlots: {
//		default: props => createElement('span', props.text)
//	},
//		// The name of the slot, if this component is the
//		// child of another component
//		slot: 'name-of-slot',
//		// Other special top-level properties
//		key: 'myKey',
//		ref: 'myRef',
//		// If you are applying the same ref name to multiple
//		// elements in the render function. This will make `$refs.myRef` become an
//		// array
//		refInFor: true
