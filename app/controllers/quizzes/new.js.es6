export default Ember.ArrayController.extend({
  shuffledCards: function() {
    return _.shuffle(this.get('model.content'));
  }.property()
});
