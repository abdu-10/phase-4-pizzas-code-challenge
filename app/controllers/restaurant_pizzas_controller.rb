class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :invalid_entry_params
    def create
        restaurant_pizza = RestaurantPizza.create!(newrp_params)
        render json: restaurant_pizza
    end

    private

    def newrp_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
    def invalid_entry_params(invalid)
        render json: {errors: [invalid.record.errors]}, status: :unprocessable_entity
    end
end