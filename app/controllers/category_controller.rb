class CategoryController < ApplicationController
  before_action :set_category, only: [:subscription]

  def subscription
    if params[:user_id].present?
      subscriptions = Subscription.where(:user_id => params[:user_id].to_i, category_id: @category.id)
      respond_to do |format|
        if subscriptions.size > 0
          if subscriptions.destroy_all
            format.js {}
          end
        else
          subscription = Subscription.new(:user_id => params[:user_id].to_i, category_id: @category.id)
          subscription.secret_code = (0...5).map { ('a'..'z').to_a[rand(26)] }.join
          if subscription.save
            format.js {}
          end
        end
      end
    end
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end
end
