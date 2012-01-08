class Admin::DoctorsController < ApplicationController
  # GET /admin/doctors
  # GET /admin/doctors.xml
  before_filter :authenticate_user!
  def index
    @admin_doctors = Admin::Doctor.where(:user_id => current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_doctors }
    end
  end

  # GET /admin/doctors/1
  # GET /admin/doctors/1.xml
  def show
    @admin_doctor = Admin::Doctor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_doctor }
    end
  end

  # GET /admin/doctors/new
  # GET /admin/doctors/new.xml
  def new
    @admin_doctor = Admin::Doctor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_doctor }
    end
  end

  # GET /admin/doctors/1/edit
  def edit
    @admin_doctor = Admin::Doctor.find(params[:id])
  end

  # POST /admin/doctors
  # POST /admin/doctors.xml
  def create
    @admin_doctor = Admin::Doctor.new(params[:admin_doctor].merge(:user_id => current_user.id))

    respond_to do |format|
      if @admin_doctor.save
        format.html { redirect_to(@admin_doctor, :notice => 'Doctor was successfully created.') }
        format.xml  { render :xml => @admin_doctor, :status => :created, :location => @admin_doctor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_doctor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/doctors/1
  # PUT /admin/doctors/1.xml
  def update
    @admin_doctor = Admin::Doctor.find(params[:id])

    respond_to do |format|
      if @admin_doctor.update_attributes(params[:admin_doctor])
        format.html { redirect_to(@admin_doctor, :notice => 'Doctor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_doctor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/doctors/1
  # DELETE /admin/doctors/1.xml
  def destroy
    @admin_doctor = Admin::Doctor.find(params[:id])
    @admin_doctor.destroy

    respond_to do |format|
      format.html { redirect_to(admin_doctors_url) }
      format.xml  { head :ok }
    end
  end
end
