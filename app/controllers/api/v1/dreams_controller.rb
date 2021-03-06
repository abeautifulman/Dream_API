class Api::V1::DreamsController < Api::V1::BaseController

  private

    def dream_params
      params.require(:dream).permit(:date, :category, :description, :user_id)
    end

    def query_params
      # this assumes that a dream belongs to a user and has an :user_id
      # allowing us to filter by this
      params.permit(:user_id, :date, :category, :description)
    end

end
