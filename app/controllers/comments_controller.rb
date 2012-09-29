class CommentsController < InheritedResources::Base
  belongs_to :article
  actions :create, :delete
  respond_to :html, :xml, :json

  def create
    create!(:notice => "Create comment succeed.") { article_path @comment.article }
  end
end
