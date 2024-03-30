class RetrieveDeviceStatusJob
  include Sidekiq::Job

  def perform(*args)
    devices = Device.all
    devices.each do |device|
      current_status = simulate_device_connection(device)
      device.update(status: current_status, last_updated_at: Time.current)
    end
    p 'Devices polled and updated!'
  end

  private

  def simulate_device_connection(device)
    # device.call_remote_ip
    %w[ok error].sample
  end
end
