import consumer from "./consumer"

consumer.subscriptions.create("TalksphereChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('.messages-field').append(data.body)
    $('.messages-field').scrollTop($('.messages-field')[0].scrollHeight);
    $('#message-content').val("").focus();
  }
});
