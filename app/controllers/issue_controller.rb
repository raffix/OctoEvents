class IssueController < ApplicationController

  def index
    list = Issue.all.pluck(:issue_id)
    render :json => { list: list }
  end

  def events
    list = Issue.where(issue_id: params[:id]).pluck(:payload)
    render :json => { issue_id: params[:id], events: list }
  end
end
