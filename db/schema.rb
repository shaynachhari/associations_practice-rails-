# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_27_093856) do
  create_table "abcs", force: :cascade do |t|
    t.integer "a_id"
    t.integer "b_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a_id"], name: "index_abcs_on_a_id"
    t.index ["b_id"], name: "index_abcs_on_b_id"
  end

  create_table "account_details", force: :cascade do |t|
    t.integer "managerAccount_id"
    t.integer "credit_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["managerAccount_id"], name: "index_account_details_on_managerAccount_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.integer "supplier_id", null: false
    t.string "account_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "as", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assemblies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assemblies_parts", force: :cascade do |t|
    t.integer "assemblie_id"
    t.integer "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assemblie_id"], name: "index_assemblies_parts_on_assemblie_id"
    t.index ["part_id"], name: "index_assemblies_parts_on_part_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "author_id"
    t.string "title"
    t.text "page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "bs", force: :cascade do |t|
    t.string "b_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_alls", force: :cascade do |t|
    t.string "acoount"
    t.integer "employee_id"
    t.integer "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forums", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jerries", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jerries_toms", force: :cascade do |t|
    t.integer "jerry_id"
    t.integer "tom_id"
    t.index ["jerry_id"], name: "index_jerries_toms_on_jerry_id"
    t.index ["tom_id"], name: "index_jerries_toms_on_tom_id"
  end

  create_table "manager_accounts", force: :cascade do |t|
    t.integer "manager_id"
    t.string "account_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_manager_accounts_on_manager_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.bigint "imageable_id"
    t.string "imageable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id"
  end

  create_table "poly_comments", force: :cascade do |t|
    t.text "content"
    t.string "commentable_type", null: false
    t.integer "commentable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_poly_comments_on_commentable"
  end

  create_table "post1s", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts_tags", id: false, force: :cascade do |t|
    t.integer "post_id", null: false
    t.integer "tag_id", null: false
    t.index ["post_id", "tag_id"], name: "index_posts_tags_on_post_id_and_tag_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.integer "Student1_id"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Student1_id"], name: "index_schools_on_Student1_id"
    t.index ["teacher_id"], name: "index_schools_on_teacher_id"
  end

  create_table "student1_teachers", force: :cascade do |t|
    t.integer "Student1_id"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Student1_id"], name: "index_student1_teachers_on_Student1_id"
    t.index ["teacher_id"], name: "index_student1_teachers_on_teacher_id"
  end

  create_table "student1s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "roll_number"
    t.integer "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teacher_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user1s", force: :cascade do |t|
    t.string "name"
    t.integer "supervisor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "type", limit: 32, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accounts", "suppliers"
  add_foreign_key "books", "authors"
end
