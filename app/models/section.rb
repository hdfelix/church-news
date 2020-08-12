class Section < ApplicationRecord
  has_ancestry

  belongs_to :newsletter, inverse_of: :sections

  validates :title, presence: true

  def contents
    self.children.map do|child|
      { title: child.title, content: child.content }
    end
  end
end
