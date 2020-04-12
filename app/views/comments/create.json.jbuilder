json.content  @comment.content
json.created_at @comment.created_at.strftime("%Y-%m-%d")
json.user_id  @comment.user.id
json.user_name  @comment.user.name