class DashboardsController < ApplicationController
  def index
    @all_steps_ever = Step.total_steps_taken
  end

  def show
  end
end
