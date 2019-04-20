class Api::V1::PopupsController < Api::V1::BaseController
  def index
    @popups = policy_scope(Popup)
  end
end
