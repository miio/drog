class ArticlesController < InheritedResources::Base
  before_filter :assign_author, only: [:create]
  actions :index, :show, :new, :create, :delete
  respond_to :html, :xml, :json

  def assign_author
    build_resource.author = current_user
  end
end
