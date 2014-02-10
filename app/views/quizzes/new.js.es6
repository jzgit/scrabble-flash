export default Ember.View.extend({
  initModals: function() {
    modalEffects.init();
  }.on('didInsertElement')
});
