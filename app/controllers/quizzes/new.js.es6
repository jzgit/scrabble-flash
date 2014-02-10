export default Ember.ArrayController.extend({
  cardCount: 0,
  shuffledCards: function() {
    return _.shuffle(this.get('model.content'));
  }.property(),

  actions: {
    nextCard: function(card) {
      var cards = this.get('model.content');
      cards.pushObject(card.set('visible', false));
      if (this.get('cardCount') < 26 ) {
        cards.shiftObject().set('visible', true);
      }
      this.incrementProperty('cardCount');
    },
    startQuiz: function(card) {
      this.set('model.content', _.shuffle(this.get('model.content')));
      this.incrementProperty('cardCount');
      this.get('model.content').shiftObject().set('visible', true);
    }
  }

});
