class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :customer_id
      t.integer :doctor_id
      t.string :pet
      t.datetime :visit_date
      t.boolean :send_remider
      t.string :reason

      t.timestamps null: false
    end
  end
end
