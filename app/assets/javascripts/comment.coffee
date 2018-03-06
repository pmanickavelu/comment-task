# # Place all the behaviors and hooks related to the matching controller here.
# # All this logic will automatically be available in application.js.
# # You can use CoffeeScript in this file: http://coffeescript.org/
ready = ()->
  $("#form_holder").delegate "#new_user_comment", "submit", (e)=>
    e.preventDefault()
    $.ajax
        url:$("#new_user_comment").attr("action")
        method: "POST"
        context: "script"
        data:
          authenticity_token: $(this).find("input[name=authenticity_token]").val()
          user_comment:
            comment_text: $(this).find("#user_comment_comment_text").val()

$(document).ready ready
# $(document).on "reload_comments", ready
