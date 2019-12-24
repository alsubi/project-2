class Store < ApplicationRecord
  belongs_to :user 
  validates :name, uniqueness: true,presence: true
  # validates :image
  # validates_format_of :image,
  # :with => %r{^balls/.+\.(gif|jpe?g|png)$}i,
  # :message => "must start with 'balls/' and have an image extension"

end
