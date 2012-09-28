class AddAuthorToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author_id, :integer, references: "users"
  end
end
