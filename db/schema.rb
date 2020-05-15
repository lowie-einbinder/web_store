ActiveRecord::Schema.define(version: 2020_05_14_212125) do

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "price"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
