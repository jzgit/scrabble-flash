export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('choice', params.choice_id);
  },
  deactivate: function() {
    var model = this.get('controller.model');
    model.rollback();
  },
  actions: {
    save: function(model) {
      var _this = this;
      model.save().then(function() {
        _this.transitionTo('choices.show', model);
      });
    },
    cancel: function(model) {
      this.transitionTo('choices.show', model);
    }
  }
});
