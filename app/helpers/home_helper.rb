# module HomeHelper
#   def render_comments(comments, depth = 0)
#     comments.map do |comment|
#       content_tag(:div, class: "comment", style: "padding-left: #{depth * 20}px;") do
#         content_tag(:p, comment.content) +
#         (render_comments(comment.children, depth + 1) if comment.children.any?).to_s
#       end
#     end.join.html_safe
#   end
# end

# module HomeHelper
#   def render_comments(comments, depth = 0)
#     comments.map do |comment|
#       content_tag(:div, class: "comment", style: "padding-left: #{depth * 20}px;") do
#         content_tag(:p, comment.content) +
#         content_tag(:div, render_comments(comment.children, depth + 1), class: "children") if comment.children.any?
#       end
#     end.join.html_safe
#   end
# end

# module HomeHelper
#   def render_comments(comments, depth = 0)
#     comments.map do |comment|
#       content_tag(:div, class: "comment", style: "padding-left: #{depth * 20}px;") do
#         content_tag(:p, comment.content) +
#         content_tag(:div, class: "children") do
#           (render_comments(comment.children, depth + 1) if comment.children.any?).to_s
#         end
#       end
#     end.join.html_safe
#   end
# end

module HomeHelper
  def render_comments(comments, depth = 0)
    comments.map do |comment|
      content_tag(:div, class: "comment", style: "padding-left: #{depth * 20}px;") do
        content_tag(:div, class:"title") do
        link_to(comment.title, comment_path(comment)) 
        end +
        content_tag(:div, class: "user") do
          comment.user.name
        end +
        content_tag(:div, class: "created_at") do
          comment.created_at
        end +
        content_tag(:div, class: "content") do
          comment.content
        end +
        content_tag(:br) +
        content_tag(:div, class: "children") do
          (render_comments(comment.children, depth + 1) if comment.children.any?).to_s
        end
      end
    end.join.html_safe
  end
end