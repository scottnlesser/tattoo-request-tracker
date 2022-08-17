class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :paperform_id
      t.datetime :submitted_at
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.string :preferred_contact
      t.string :new_client
      t.text :description
      t.string :color_or_gray
      t.string :ref_pic_urls
      t.string :size
      t.string :placement
      t.string :cover_up
      t.string :cover_up_ref_url
      t.string :pref_artist
      t.string :pref_days
      t.string :pref_times
      t.string :local_client
      t.string :coming_from
      t.text :client_notes
      t.string :ip_address
    end
  end
end
