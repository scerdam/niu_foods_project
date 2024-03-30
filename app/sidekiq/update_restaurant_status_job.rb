class UpdateRestaurantStatusJob
  include Sidekiq::Job

  def perform
    restaurants = Restaurant.all
    restaurants.each do |restaurant|
      restaurant_status = calculate_restaurant_status(restaurant)
      restaurant.update(status: restaurant_status, last_updated_at: Time.now)
    end
    p 'Restaurants status updated!'
  end

  private

  def calculate_restaurant_status(restaurant)
    if restaurant.devices.all? { |device| device.status == 'error' }
      :error
    elsif restaurant.devices.all? { |device| device.status == 'ok' }
      :ok
    else
      :warning
    end
  end
end
