class Post < ApplicationRecord
  belongs_to :user
  # P/ uma única imagem
  # has_one_attached :photo
  # P/ multiplas imagens
  has_many_attached :photos

  validates :content, presence: true, length: {minimum: 5}
end
