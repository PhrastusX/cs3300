module ControllerMacros
    def login_user
      # Before each test, create and login the user
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:student]
        user = FactoryBot.create(:student)
        sign_in user
      end
    end

    def login_as(student)
      request.session[:user_id] = student.id
    end
  
    # Not used in this tutorial, but left to show an example of different user types
    # def login_admin
    #   before(:each) do
    #     @request.env["devise.mapping"] = Devise.mappings[:admin]
    #     sign_in FactoryBot.create(:admin) # Using factory bot as an example
    #   end
    # end
  end