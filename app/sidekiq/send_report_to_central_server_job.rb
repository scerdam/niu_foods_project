class SendReportToCentralServerJob
  include Sidekiq::Job

  def perform
    devices_status = Device.pluck(:id, :status)
    send_report(devices_status)
  end

  private

  def send_report(devices)
    p 'Simulate generate report like a pdf or plain text and send to Central server'
  end
end
