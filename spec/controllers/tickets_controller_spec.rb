require 'rails_helper'

describe TicketsController do
  describe "#create" do
    let(:ticket_params) do
      {
        ticket: {
          name: 'name',
          phone_number: '+12025550166',
          description: 'description'
        }
      }
    end

    it "creates a ticket" do
      expect do
        post :create, ticket_params
      end.to change(Ticket, :count).by(1)
    end

    it "redirects to root path" do
      post :create, ticket_params
      expect(response).to redirect_to root_path
    end
  end
end