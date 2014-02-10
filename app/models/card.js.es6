export default DS.Model.extend({
  visible: false,
  letter:  DS.attr('string'),
  choices: DS.hasMany('choice'),

  shuffledChoices: function(){
    return _.shuffle(this.get('choices.content'));
  }.property()
});

