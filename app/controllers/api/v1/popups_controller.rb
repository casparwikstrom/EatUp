class Api::V1::PopupsController < Api::V1::BaseController
  def index
    @Popups = policy_scope(Popup)
  end
end
