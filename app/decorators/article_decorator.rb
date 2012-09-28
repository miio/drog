# coding: utf-8
module ArticleDecorator
  def link_with_title
    link_to title, self
  end

  def new_link
    link_to 'New Article', new_article_path
  end

  def edit_link
    link_to 'Edit', edit_article_path(self)
  end

  def destroy_link
    link_to 'Destroy', self, method: :delete, data: { confirm: 'Are you sure?' }
  end
end
