export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('quiz', params.quiz_id);
  },
  actions: {
    destroyRecord: function(model) {
      var _this = this;
      model.destroyRecord().then(function() {
        _this.transitionTo('quizzes.index');
      });
    }
  }
});
