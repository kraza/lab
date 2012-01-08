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

describe Admin::PatientsController do

  # This should return the minimal set of attributes required to create a valid
  # Admin::Patient. As you add validations to Admin::Patient, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all admin_patients as @admin_patients" do
      patient = Admin::Patient.create! valid_attributes
      get :index
      assigns(:admin_patients).should eq([patient])
    end
  end

  describe "GET show" do
    it "assigns the requested admin_patient as @admin_patient" do
      patient = Admin::Patient.create! valid_attributes
      get :show, :id => patient.id.to_s
      assigns(:admin_patient).should eq(patient)
    end
  end

  describe "GET new" do
    it "assigns a new admin_patient as @admin_patient" do
      get :new
      assigns(:admin_patient).should be_a_new(Admin::Patient)
    end
  end

  describe "GET edit" do
    it "assigns the requested admin_patient as @admin_patient" do
      patient = Admin::Patient.create! valid_attributes
      get :edit, :id => patient.id.to_s
      assigns(:admin_patient).should eq(patient)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Admin::Patient" do
        expect {
          post :create, :admin_patient => valid_attributes
        }.to change(Admin::Patient, :count).by(1)
      end

      it "assigns a newly created admin_patient as @admin_patient" do
        post :create, :admin_patient => valid_attributes
        assigns(:admin_patient).should be_a(Admin::Patient)
        assigns(:admin_patient).should be_persisted
      end

      it "redirects to the created admin_patient" do
        post :create, :admin_patient => valid_attributes
        response.should redirect_to(Admin::Patient.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_patient as @admin_patient" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Patient.any_instance.stub(:save).and_return(false)
        post :create, :admin_patient => {}
        assigns(:admin_patient).should be_a_new(Admin::Patient)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Patient.any_instance.stub(:save).and_return(false)
        post :create, :admin_patient => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested admin_patient" do
        patient = Admin::Patient.create! valid_attributes
        # Assuming there are no other admin_patients in the database, this
        # specifies that the Admin::Patient created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Admin::Patient.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => patient.id, :admin_patient => {'these' => 'params'}
      end

      it "assigns the requested admin_patient as @admin_patient" do
        patient = Admin::Patient.create! valid_attributes
        put :update, :id => patient.id, :admin_patient => valid_attributes
        assigns(:admin_patient).should eq(patient)
      end

      it "redirects to the admin_patient" do
        patient = Admin::Patient.create! valid_attributes
        put :update, :id => patient.id, :admin_patient => valid_attributes
        response.should redirect_to(patient)
      end
    end

    describe "with invalid params" do
      it "assigns the admin_patient as @admin_patient" do
        patient = Admin::Patient.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Patient.any_instance.stub(:save).and_return(false)
        put :update, :id => patient.id.to_s, :admin_patient => {}
        assigns(:admin_patient).should eq(patient)
      end

      it "re-renders the 'edit' template" do
        patient = Admin::Patient.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Patient.any_instance.stub(:save).and_return(false)
        put :update, :id => patient.id.to_s, :admin_patient => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admin_patient" do
      patient = Admin::Patient.create! valid_attributes
      expect {
        delete :destroy, :id => patient.id.to_s
      }.to change(Admin::Patient, :count).by(-1)
    end

    it "redirects to the admin_patients list" do
      patient = Admin::Patient.create! valid_attributes
      delete :destroy, :id => patient.id.to_s
      response.should redirect_to(admin_patients_url)
    end
  end

end