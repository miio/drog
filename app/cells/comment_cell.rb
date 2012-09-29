class CommentCell < Cell::Rails
  helper JencilTextAreaHelper
  def list opts
    @comments = opts[:article].comments
    render
  end

  def form opts
    @comment = Comment.new
    @comment.article = opts[:article]
    render
  end
end
