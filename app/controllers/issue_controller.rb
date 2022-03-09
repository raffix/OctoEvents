class IssueController < ApplicationController

  def index
    list = Issue.all.pluck(:issue_id)
    render :json => { list: list }
  end


end
