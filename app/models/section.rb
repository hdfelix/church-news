class Section < ApplicationRecord
  has_ancestry

  validates :title, presence: true

  def contents
    self.children.map do|child|
      { title: child.title, content: child.content }
    end
  end
end
