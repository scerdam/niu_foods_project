module ApplicationHelper
  def niufoods_datetime_format(date)
    date.strftime('%H:%M:%S - %d/%m/%y')
  end

  def generate_status_badge(status)
    "<span class='badge rounded-pill bg-#{color_pill(status)}'>#{status}</span>".html_safe
  end

  def color_pill(status)
    return 'success' if status == 'ok'

    return 'danger' if status == 'error'

    'warning'
  end
end
