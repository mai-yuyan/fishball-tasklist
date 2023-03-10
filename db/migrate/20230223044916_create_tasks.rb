class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      # hashtag is a comment
      t.text :description
      t.timestamps
    end
  end
end

#Title/Header, Description