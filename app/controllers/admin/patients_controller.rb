class Admin::PatientsController < ApplicationController
  # GET /admin/patients
  # GET /admin/patients.xml
  def index
    @admin_patients = Admin::Patient.all
    @admin_patients.each{|test| test.admin_doctor}
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_patients }
    end
  end

  # GET /admin/patients/1
  # GET /admin/patients/1.xml
  def show
    @admin_patient = Admin::Patient.find(params[:id])
    @admin_patient.admin_doctor
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_patient }
    end
  end

  # GET /admin/patients/new
  # GET /admin/patients/new.xml
  def new
    @admin_patient = Admin::Patient.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_patient }
    end
  end

  # GET /admin/patients/1/edit
  def edit
    @admin_patient = Admin::Patient.find(params[:id])
  end

  # POST /admin/patients
  # POST /admin/patients.xml
  def create
    @admin_patient = Admin::Patient.new(params[:admin_patient])

    respond_to do |format|
      if @admin_patient.save
        format.html { redirect_to(@admin_patient, :notice => 'Patient was successfully created.') }
        format.xml  { render :xml => @admin_patient, :status => :created, :location => @admin_patient }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_patient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/patients/1
  # PUT /admin/patients/1.xml
  def update
    @admin_patient = Admin::Patient.find(params[:id])

    respond_to do |format|
      if @admin_patient.update_attributes(params[:admin_patient])
        format.html { redirect_to(@admin_patient, :notice => 'Patient was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_patient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/patients/1
  # DELETE /admin/patients/1.xml
  def destroy
    @admin_patient = Admin::Patient.find(params[:id])
    @admin_patient.destroy

    respond_to do |format|
      format.html { redirect_to(admin_patients_url) }
      format.xml  { head :ok }
    end
  end
end
