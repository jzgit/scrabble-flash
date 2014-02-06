export default DS.Model.extend({
  letter:  DS.attr('string'),
  options: DS.hasMany('option')
});
