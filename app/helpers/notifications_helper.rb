module NotificationsHelper
  def posted_time(time)
    time > Date.today ? "#{time_ago_in_words(time)}" : time.strftime('%m月%d日')
  end
  def read_display_name(read)
    read ? '既読' : '未読'
  end
end