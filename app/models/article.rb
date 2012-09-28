class Article < ActiveRecord::Base
  attr_accessible :title, :body, :updated_at, :created_at
  belongs_to :author, class_name: "User"
  belongs_to :category
  has_many :comments
  validates_presence_of :author

  def save
    write_attribute('author', current_user) if respond_to?(:author) && author.nil?
    super
  end
end
