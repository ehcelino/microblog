class HomeController < ApplicationController

  # def nested_comments(comments)
  #   comments.map do |comment, sub_comments|
  #     render(comment) + content_tag(:div, nested_comments(sub_comments), class: "nested_comments")
  #   end.join.html_safe
  # end

  def index
    # @comments = Comment.all
    @comments = Comment.roots
    # tmp_com = Comment.all
    # tmp_com.each do |each_com|
    #   if each_com.parent_id.nil?
    #     allcom << each_com
    #     lastparent = each_com
    #   else
    #     tmp_com.each do |new_com|
    #       if new_com.parent_id == lastparent.id
    #         allcom << new_com


  end

end