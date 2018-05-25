class CreateParagraphs < ActiveRecord::Migration[5.1]
  def change
    create_table :paragraphs do |t|
      t.text :content
      t.belongs_to :article, foreign_key: true

      t.timestamps
    end
  end
end
