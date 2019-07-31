require 'rails_helper'

RSpec.describe TradesController, type: :controller do
  let(:valid_session) { {} }
  let(:valid_attributes) {
    {email:"valid@example.com", username: "valid_name", password: "123456"}
  }
  let(:invalid_attributes) {
    {email: "invalid", username:"Invalid body"}
  }
 describe "GET #index" do
   it "returns a success response" do
     User.create! valid_attributes
     get :index, params: {}, session: valid_session
     expect(response).to be_successful
   end
 end

  describe "GET #edit" do
    it "it returns a success response" do
      user = User.create! valid_attributes
          get :edit, params: {id: user.id.to_param}, session: valid_session
          expect(response).to be_successful     
    end
  end

end
