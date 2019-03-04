ActiveAdmin.register Complaint do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :company_id, :user_id, :content

  index do 
    column :id
    column :user_id
    column :company_id
    column :content
    
    actions
  end

  form do |f|
    inputs 'Complaint' do  
        input :content
        
  end
  actions
    end
end

