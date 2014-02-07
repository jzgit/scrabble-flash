export default DS.Model.extend({
  letter:  DS.attr('string'),
  choices: DS.hasMany('choice',{async: true})
});
