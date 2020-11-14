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
    column :name
    column :status
    column :detail_list
    actions
  end

  filter :name
  filter :email

  scope :all, default: true
  scope :searching_employee_status
  scope :searching_job_status
  scope :currently_working_status
  scope :None_of_them_status

end
