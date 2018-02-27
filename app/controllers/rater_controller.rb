class RaterController < ApplicationController

  def create
    if user_signed_in?
      obj = params[:klass].classify.constantize.find(params[:id])
      obj.rate params[:score].to_f, current_user, params[:dimension]

      render.includes(:rating_cache) :json => true
    else
      render.includes(:rating_cache) :json => false
    end
  end
end
