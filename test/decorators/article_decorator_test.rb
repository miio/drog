# coding: utf-8
require 'test_helper'

class ArticleDecoratorTest < ActiveSupport::TestCase
  def setup
    @article = Article.new.extend ArticleDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
