require 'rails_helper'

RSpec.describe IssueController, type: :controller do
  login_user

  describe "GET list all issue ID" do
    it "returns a success response" do 
      get :index
      expect(response).to be_successful
      parsed_body = JSON.parse(response.body)
      expect(parsed_body['list']).to be_kind_of(Array)
    end

    it "return a unathorized" do
      sign_out :user
      get :index
      expect(response).not_to be_successful
    end
  end

  describe "GET Events by Issue ID" do
    it "returns a success reponse" do
      issue = FactoryBot.create(:issue)
      get :events, params: { id: issue.issue_id }
      expect(response).to be_successful
      parsed_body = JSON.parse(response.body)
      expect(parsed_body['events']).to be_kind_of(Array)
      expect(parsed_body['events'].count).to eq(1)

    end
  end
end