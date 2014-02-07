export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('choice');
  },
  deactivate: function() {
    var model = this.get('controller.model');
    if (model.get('isNew')) {
      model.deleteRecord();
    }
  },
  actions: {
    save: function(model) {
      var _this = this;
      model.save().then(function() {
        _this.transitionTo('choices.show', model);
      });
    },
    cancel: function() {
      this.transitionTo('choices.index');
    }
  }
});
