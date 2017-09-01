ActiveAdmin.register Popup do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
permit_params :title, :description, :funding_goal, :deadline, :status, :seat_capacity, :price, :user_id, photos: [], type_ids: []


#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

# controller do
#    # def quick_add...
#     # def quick_create...

#     def quick_edit
#       @popup = Popup.find(params[:id])
#       render layout: false
#     end

#     def quick_update
#       @popup = Popup.find(params[:id])
#      @popup.update(permitted_params[:popup])
#      render 'quick_response', layout: false
#    end
#  end

end
