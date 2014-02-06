var Router = Ember.Router.extend({
  // Uncomment to change Ember's router to use the 
  // HTML5 History API
  // Please note that not all browsers support this!
  // You will also need to uncomment the greedy route matcher
  // in config/routes.rb

  // location: 'history'
});

Router.map(function() {
  this.resource('posts');
  this.resource('cards', function() {
    this.route('new');
    this.route('show', {path: ':card_id'});
    this.route('edit', {path: ':card_id/edit'});
  });
});

export default Router;
