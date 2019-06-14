module uim.bsv.components.cards;

public import uim.bsv.components.cards.body_;
public import uim.bsv.components.cards.card;
public import uim.bsv.components.cards.columns;
public import uim.bsv.components.cards.deck;
public import uim.bsv.components.cards.footer;
public import uim.bsv.components.cards.header;
public import uim.bsv.components.cards.image;
public import uim.bsv.components.cards.subtitle;
public import uim.bsv.components.cards.text;
public import uim.bsv.components.cards.title;

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