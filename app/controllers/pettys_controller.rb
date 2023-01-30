class PettysController < ApplicationController
  def new
    @petty = Petty.new
  end

  def create
    @petty = Petty.new(petty_params)
    @petty.user_id = current_user.id
    @petty.total_money = @petty.money_1 + @petty.money_2 + @petty.money_3
    @petty.save
    redirect_to petty_path(@petty.id)
  end

  def index
    @pettys = Petty.all

  end

  def show
    @petty = Petty.find(params[:id])
  end

  def edit
    @petty = Petty.find(params[:id])
  end

  def update
    @petty = Petty.find(params[:id])
    @petty.total_money = @petty.money_1 + @petty.money_2 + @petty.money_3
    @petty.update(update_petty_params)
    @petty.save
    redirect_to petty_path(@petty.id)
  end

  def destroy
    @petty = Petty.find(params[:id])
    @petty.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def petty_params
    params.require(:petty).permit(:category,:section,:day,:breakdown_1,:breakdown_2,:breakdown_3,:money_1,:money_2,:money_3)
  end

  def update_petty_params
    params.require(:petty).permit(:category,:section,:day,:breakdown_1,:breakdown_2,:breakdown_3,:money_1,:money_2,:money_3)
  end
end
