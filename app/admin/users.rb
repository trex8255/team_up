ActiveAdmin.register User do

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :status
    column :profile do |user|
    if user.profile.attached? 
      image_tag url_for(user.profile), class:"small_image"
    end
  end
    actions
  end

  filter :name
  filter :email

  scope :all, default: true
  scope :searching_employee
  scope :searching_job
  scope :currently_working
  scope :None_of_them

end
