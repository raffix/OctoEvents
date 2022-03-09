class EventController < ActionController::API
  def create
    puts params.keys
    if params[:event][:issue].present?
      payload = params[:event]
      issue_id = params[:event][:issue][:number]
      issue = Issue.create(issue_id: issue_id, payload: payload)
      return render :json => { issue: issue.issue_id }
    end
    render :json => {}
  end
end
