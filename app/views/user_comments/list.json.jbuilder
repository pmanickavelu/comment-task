json.array! @user_comments do |comment|
 json.extract! comment, :comment_text, :ip
 json.created_at(comment.created_at.strftime('%Y-%m-%d %H:%M'))
end
