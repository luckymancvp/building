class NotifyCenterController < ApplicationController
  def get
    #render :text => Time.zone
    notify = notify_by_time
    render :json => notify
  end

  def allow
    render :layout => false
  end

  def notify_by_time

    # Init time value
    Time.zone = "Hanoi"
    now       = Time.now
    endTime   = Time.new(now.year, now.month, now.day, 17, 30)
    diff      = endTime - now;


    notify         = NotifyCenter.new
    notify.title   = "New notification !"
    notify.content = "Time left : " + (diff/60).to_i.to_s + " minutes"
    if (notify >= 240) then
      return notify if notify % 60 == 0
      return nil
    end

    if (notify >= 30) then
      return notify if notify % 30 == 0
      return nil
    end

    if (notify > 0) then
      return notify if notify < 30
    end

    return nil
  end

  def notify_by_db
    notify = NotifyCenter.where("
      (checked = 0)
      and ((conditions is not null)
        or (time >= '#{Time.now}') and (time <= '#{ Time.now + 1.minute}'))
    ").first
    if notify != nil then
      notify.checked = 1;
      notify.save
    end
  end
end
