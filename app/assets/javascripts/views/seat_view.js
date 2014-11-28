var App = App || {};

App.Views.SeatView = Backbone.View.extend({

  tagName: 'div',

  events: {
    'click': selectSeat
  },

  initialize: function() {
    this.listenTo(this.model,'change', this.render);
  },

  render: function() {
    var template = $('#seatView').html();
    var seatHTML = Handlebars.compile(template);

    this.$el.html(seatHTML(this.model.toJSON() ));
    return this;

  },

  selectSeat: function() {
    this.$el.parent().find('div').removeClass('highlight');
    this.$el.addClass('highlight');
    $('#showSeat').find('p').hide()(this.model.get('body')).fadeIn();
  },
});