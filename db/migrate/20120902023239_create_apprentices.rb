class CreateApprentices < ActiveRecord::Migration
  def change
    create_table :apprentices do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :gender
      t.integer :age
      t.date :start_date
      t.date :end_date
      t.integer :room_and_board
      t.boolean :fairfield
      t.boolean :hartford
      t.boolean :litchfield
      t.boolean :middlesex
      t.boolean :newhaven
      t.boolean :newlondon
      t.boolean :tolland
      t.boolean :windham
      t.boolean :interview
      t.integer :only_apprentice
      t.text :housing_details
      t.integer :commitment
      t.text :schedule
      t.boolean :transportation
      t.boolean :manual_transmission
      t.text :why_apprentice
      t.boolean :csa
      t.boolean :dairy
      t.boolean :diversified
      t.boolean :farm_to_institution
      t.boolean :field_crops
      t.boolean :livestock
      t.boolean :orchard
      t.boolean :organic
      t.boolean :upick
      t.boolean :vegetables
      t.boolean :community_farm
      t.boolean :other
      t.integer :farm_experience
      t.text :work_experience
      t.text :led_to_work
      t.text :interest_in_apprentice
      t.text :prepared
      t.text :what_you_bring
      t.text :references
      t.boolean :bedroom_sharing
      t.boolean :bathroom_sharing
      t.text :rooming_needs
      t.boolean :smoker
      t.text :food_restrictions
      t.text :three_things
      t.text :heard_about
      t.boolean :ctnofa_member
      t.boolean :agreement_a
      t.boolean :agreement_b
      t.boolean :agreement_c
      t.boolean :agreement_d
      t.boolean :agreement_e
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
