class Post < ApplicationRecord
  is_impressionable
  acts_as_votable
  belongs_to :user
  belongs_to :category
  has_many :comments

  has_attached_file :image, styles: { medium: "700x500#", small: "350x250>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, presence: true
  validates :description, presence: true
  validates_presence_of :category_id, presence: true
end
