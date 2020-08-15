class AddNewsletterRefToSection < ActiveRecord::Migration[5.1]
  def change
    add_reference :sections, :newsletter, foreign_key: true
  end
end
