require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Admin::TestsController do

  # This should return the minimal set of attributes required to create a valid
  # Admin::Test. As you add validations to Admin::Test, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all admin_tests as @admin_tests" do
      test = Admin::Test.create! valid_attributes
      get :index
      assigns(:admin_tests).should eq([test])
    end
  end

  describe "GET show" do
    it "assigns the requested admin_test as @admin_test" do
      test = Admin::Test.create! valid_attributes
      get :show, :id => test.id.to_s
      assigns(:admin_test).should eq(test)
    end
  end

  describe "GET new" do
    it "assigns a new admin_test as @admin_test" do
      get :new
      assigns(:admin_test).should be_a_new(Admin::Test)
    end
  end

  describe "GET edit" do
    it "assigns the requested admin_test as @admin_test" do
      test = Admin::Test.create! valid_attributes
      get :edit, :id => test.id.to_s
      assigns(:admin_test).should eq(test)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Admin::Test" do
        expect {
          post :create, :admin_test => valid_attributes
        }.to change(Admin::Test, :count).by(1)
      end

      it "assigns a newly created admin_test as @admin_test" do
        post :create, :admin_test => valid_attributes
        assigns(:admin_test).should be_a(Admin::Test)
        assigns(:admin_test).should be_persisted
      end

      it "redirects to the created admin_test" do
        post :create, :admin_test => valid_attributes
        response.should redirect_to(Admin::Test.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_test as @admin_test" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Test.any_instance.stub(:save).and_return(false)
        post :create, :admin_test => {}
        assigns(:admin_test).should be_a_new(Admin::Test)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Test.any_instance.stub(:save).and_return(false)
        post :create, :admin_test => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested admin_test" do
        test = Admin::Test.create! valid_attributes
        # Assuming there are no other admin_tests in the database, this
        # specifies that the Admin::Test created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Admin::Test.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => test.id, :admin_test => {'these' => 'params'}
      end

      it "assigns the requested admin_test as @admin_test" do
        test = Admin::Test.create! valid_attributes
        put :update, :id => test.id, :admin_test => valid_attributes
        assigns(:admin_test).should eq(test)
      end

      it "redirects to the admin_test" do
        test = Admin::Test.create! valid_attributes
        put :update, :id => test.id, :admin_test => valid_attributes
        response.should redirect_to(test)
      end
    end

    describe "with invalid params" do
      it "assigns the admin_test as @admin_test" do
        test = Admin::Test.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Test.any_instance.stub(:save).and_return(false)
        put :update, :id => test.id.to_s, :admin_test => {}
        assigns(:admin_test).should eq(test)
      end

      it "re-renders the 'edit' template" do
        test = Admin::Test.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Test.any_instance.stub(:save).and_return(false)
        put :update, :id => test.id.to_s, :admin_test => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admin_test" do
      test = Admin::Test.create! valid_attributes
      expect {
        delete :destroy, :id => test.id.to_s
      }.to change(Admin::Test, :count).by(-1)
    end

    it "redirects to the admin_tests list" do
      test = Admin::Test.create! valid_attributes
      delete :destroy, :id => test.id.to_s
      response.should redirect_to(admin_tests_url)
    end
  end

end
