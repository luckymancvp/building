class NotifyCenterController < ApplicationController
  def get
    #render :text => Time.zone
    notify = NotifyCenter.where("
      (checked = 0)
      and ((conditions is not null)
        or (time >= '#{Time.now}') and (time <= '#{1.minute.from_now}'))
    ").first
    if notify != nil then
      notify.checked = 1;
      notify.save
    end
    render :json => notify
  end

  def allow
    render :layout => false
  end
end
