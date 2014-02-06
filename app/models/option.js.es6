export default DS.Model.extend({
  correct: DS.attr('boolean'),
  word:    DS.attr('string'),
  card:    DS.belongsTo('card')
});
