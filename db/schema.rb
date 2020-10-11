# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_09_051211) do

  create_table "analyses", force: :cascade do |t|
    t.text "seo_title"
    t.text "seo_meta_description"
    t.text "analysis_article_image"
    t.text "analysis_article_title"
    t.text "introduction"
    t.text "title1"
    t.text "image_link1"
    t.text "affiliate_link1"
    t.text "summary1"
    t.text "highlight1_1_short"
    t.text "highlight1_2_short"
    t.text "highlight1_3_short"
    t.text "highlight1_1"
    t.text "highlight1_2"
    t.text "highlight1_3"
    t.text "highlight1_4"
    t.text "highlight1_5"
    t.text "synopsis1"
    t.text "title2"
    t.text "image_link2"
    t.text "affiliate_link2"
    t.text "summary2"
    t.text "highlight2_1_short"
    t.text "highlight2_2_short"
    t.text "highlight2_3_short"
    t.text "highlight2_1"
    t.text "highlight2_2"
    t.text "highlight2_3"
    t.text "highlight2_4"
    t.text "highlight2_5"
    t.text "synopsis2"
    t.text "title3"
    t.text "image_link3"
    t.text "affiliate_link3"
    t.text "summary3"
    t.text "highlight3_1_short"
    t.text "highlight3_2_short"
    t.text "highlight3_3_short"
    t.text "highlight3_1"
    t.text "highlight3_2"
    t.text "highlight3_3"
    t.text "highlight3_4"
    t.text "highlight3_5"
    t.text "synopsis3"
    t.text "title4"
    t.text "image_link4"
    t.text "affiliate_link4"
    t.text "summary4"
    t.text "highlight4_1"
    t.text "highlight4_2"
    t.text "highlight4_3"
    t.text "highlight4_4"
    t.text "highlight4_5"
    t.text "synopsis4"
    t.text "title5"
    t.text "image_link5"
    t.text "affiliate_link5"
    t.text "summary5"
    t.text "highlight5_1"
    t.text "highlight5_2"
    t.text "highlight5_3"
    t.text "highlight5_4"
    t.text "highlight5_5"
    t.text "synopsis5"
    t.text "title6"
    t.text "image_link6"
    t.text "affiliate_link6"
    t.text "summary6"
    t.text "highlight6_1"
    t.text "highlight6_2"
    t.text "highlight6_3"
    t.text "highlight6_4"
    t.text "highlight6_5"
    t.text "synopsis6"
    t.text "title7"
    t.text "image_link7"
    t.text "affiliate_link7"
    t.text "summary7"
    t.text "highlight7_1"
    t.text "highlight7_2"
    t.text "highlight7_3"
    t.text "highlight7_4"
    t.text "highlight7_5"
    t.text "synopsis7"
    t.text "title8"
    t.text "image_link8"
    t.text "affiliate_link8"
    t.text "summary8"
    t.text "highlight8_1"
    t.text "highlight8_2"
    t.text "highlight8_3"
    t.text "highlight8_4"
    t.text "highlight8_5"
    t.text "synopsis8"
    t.text "title9"
    t.text "image_link9"
    t.text "affiliate_link9"
    t.text "summary9"
    t.text "highlight9_1"
    t.text "highlight9_2"
    t.text "highlight9_3"
    t.text "highlight9_4"
    t.text "highlight9_5"
    t.text "synopsis9"
    t.text "title10"
    t.text "image_link10"
    t.text "affiliate_link10"
    t.text "summary10"
    t.text "highlight10_1"
    t.text "highlight10_2"
    t.text "highlight10_3"
    t.text "highlight10_4"
    t.text "highlight10_5"
    t.text "synopsis10"
    t.text "buyers_guide"
    t.text "expert_tip"
    t.text "did_you_know"
    t.text "conclusion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_analyses_on_slug", unique: true
  end

  create_table "factors", force: :cascade do |t|
    t.text "title"
    t.text "body"
    t.integer "analysis_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["analysis_id"], name: "index_factors_on_analysis_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "question"
    t.text "answer"
    t.integer "analysis_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["analysis_id"], name: "index_questions_on_analysis_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.string "slug"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
  end

  add_foreign_key "factors", "analyses"
  add_foreign_key "questions", "analyses"
end
