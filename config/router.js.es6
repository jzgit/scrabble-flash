var Router = Ember.Router.extend({
  // Uncomment to change Ember's router to use the 
  // HTML5 History API
  // Please note that not all browsers support this!
  // You will also need to uncomment the greedy route matcher
  // in config/routes.rb

  // location: 'history'
});

Router.map(function() {
  this.resource('quizzes', function() {
    this.route('new');
    this.route('show', {path: ':quiz_id'});
    this.route('edit', {path: ':quiz_id/edit'});
  });
  this.resource('cards', function() {
    this.route('show', {path: ':card_id'});
  });
});

export default Router;
