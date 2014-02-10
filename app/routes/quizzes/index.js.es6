export default Ember.Route.extend({
  model: function() {
    return this.store.find('quiz');
  },
  actions: {
    newQuiz: function() {
      this.transitionTo('quizzes.new');
    }
  }
});
