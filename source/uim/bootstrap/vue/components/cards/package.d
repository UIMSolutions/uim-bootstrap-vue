module uim.bootstrap.vue.components.cards;

public import uim.bootstrap.vue.components.cards.body_;
public import uim.bootstrap.vue.components.cards.card;
public import uim.bootstrap.vue.components.cards.columns;
public import uim.bootstrap.vue.components.cards.deck;
public import uim.bootstrap.vue.components.cards.footer;
public import uim.bootstrap.vue.components.cards.header;
public import uim.bootstrap.vue.components.cards.image;
public import uim.bootstrap.vue.components.cards.subtitle;
public import uim.bootstrap.vue.components.cards.text;
public import uim.bootstrap.vue.components.cards.title;

string vueGlobalRegisterCards() {
	return 
		BSVCardTitle.globalRegistration~
			BSVCardText.globalRegistration~
			BSVCardSubtitle.globalRegistration~
			BSVCardImage.globalRegistration~
			BSVCardHeader.globalRegistration~
			BSVCardFooter.globalRegistration~
			BSVCardDeck.globalRegistration~
			BSVCardColumns.globalRegistration~
			BSVCardBody.globalRegistration~
			BSVCard.globalRegistration;
}