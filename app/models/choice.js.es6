export default DS.Model.extend({
  word: DS.attr('string'),
  correct: DS.attr('boolean'),
  card: DS.belongsTo('card'),

  isSelected: false
});
