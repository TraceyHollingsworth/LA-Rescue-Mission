class DropQuestionsTable < ActiveRecord::Migration
  def change
    drop_table "questions", force: true do |t|
      t.integer "user_id",     null: false
      t.string  "title",       null: false
      t.text    "description", null: false
    end
  end
end
