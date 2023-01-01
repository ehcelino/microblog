class CommentsController < ApplicationController
  # def nested_comments(comments)
  #   comments.map do |comment, sub_comments|
  #     render(comment) + content_tag(:div, nested_comments(sub_comments), class: "nested_comments")
  #   end.join.html_safe
  # end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    if params[:id] 
      @parent = Comment.find(params[:id]) 
    else
      @parent = nil
    end
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(title: params[:comment][:title],
                     content: params[:comment][:content],
                     user_id: params[:comment][:user_id],
                     parent_id: params[:comment][:parent_id])

      if @comment.save
        return redirect_to comment_path(@comment)
      end
    render :new
  end


  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path, notice: "Comment was successfully erased."
  end
  


end