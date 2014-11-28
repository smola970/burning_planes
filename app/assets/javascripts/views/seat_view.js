var App = App || {};

App.Views.SeatView = Backbone.View.extend({

  tagName: 'div',

  events: {
    'click': 'selectSeat'
  },

  render: function() {

    var template = '<p>{{ seatNumber }}</p>';
    var templateFunction = Handlebars.compile(template);
    var html = templateFunction({ seatNumber: this.model });


    this.$el.html(html);

    return this; // optional so I can do chaining
  },

  selectSeat: function() {
    console.log('select seat: ', this.model)
  }

});


