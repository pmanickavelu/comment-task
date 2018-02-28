# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ()->
  $("#comment_holder").html("")
  $.get("/user_comments/list").done (data)->
    for datum in data
      console.log datum
      $("#comment_holder").append $("<div>").html($("<div>").html($("<h6>").html("comment from" + datum.ip + " at " + datum.created_at))).append($("<div>").html($("<p>").html(datum.comment_text)))

$(document).ready ready
$(document).on "reload_comments", ready
