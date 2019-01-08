class AddReferencesToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :story, index: true
  end
end
