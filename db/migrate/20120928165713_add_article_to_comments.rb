class AddArticleToComments < ActiveRecord::Migration
  def change
    add_column :comments, :article_id, :integer, references: "articles"
  end
end
