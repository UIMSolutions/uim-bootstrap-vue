module uim.bootstrap.vue.alerts;

public import uim.bootstrap.vue;
public import uim.bootstrap.vue.alerts.alert;

/* DVUEComponent vueAlert;
DVUEComponent vueAlertLink;
DVUEComponent vueAlertHeading;
*/

unittest {
	assert(BV5Alert.name == "bsv-alert");
	assert(BV5Alert.template_ == "'"~BS4Alert.toString~"'");
}	
