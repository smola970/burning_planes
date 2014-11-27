var App = App || {};

App.Models.Quote = Backbone.Model.extend({
  urlRoot: '/flights/:id'
});