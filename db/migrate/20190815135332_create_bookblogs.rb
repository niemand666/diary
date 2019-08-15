class CreateBookblogs < ActiveRecord::Migration[5.2]
  def change
    create_table :bookblogs do |t|
      t.text  :title
      t.text  :image
      t.text  :content
      t.timestamps
    end
  end
end
