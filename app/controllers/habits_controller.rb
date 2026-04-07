class HabitsController < ApplicationController
    def index
        render json Habits.all
    end

    def create
        habit = Habits.create(habits_params)
        render json: habit
    end
    
    private

    def habits_params
        params.permit(:name, :user_id)
    end

end
