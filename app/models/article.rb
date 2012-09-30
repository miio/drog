class Article < ActiveRecord::Base
  acts_as_taggable_on :tags
  attr_accessible :title, :body, :tag_list, :updated_at, :created_at
  belongs_to :author, class_name: "User"
  belongs_to :category
  has_many :comments
  validates_presence_of :author

  def save
    write_attribute('author', current_user) if respond_to?(:author) && author.nil?
    super
  end
end
