
ActiveRecord::Schema.define(version: 2023_03_10_061637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subtasks", force: :cascade do |t|
    t.string "user_story"
    t.float "story_points"
    t.string "status"
    t.bigint "task_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["task_id"], name: "index_subtasks_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tester"
  end

end
