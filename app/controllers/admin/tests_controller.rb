class Admin::TestsController < ApplicationController
  # GET /admin/tests
  # GET /admin/tests.xml
  before_filter :authenticate_user!
  def index
    @admin_tests = Admin::Test.where(:user_id => current_user.id)
    @admin_tests.each{|test| test.test_category}
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_tests }
    end
  end

  # GET /admin/tests/1
  # GET /admin/tests/1.xml
  def show
    @admin_test = Admin::Test.find(params[:id])
    @admin_test.test_category
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_test }
    end
  end

  # GET /admin/tests/new
  # GET /admin/tests/new.xml
  def new
    @admin_test = Admin::Test.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_test }
    end
  end

  # GET /admin/tests/1/edit
  def edit
    @admin_test = Admin::Test.find(params[:id])
  end

  # POST /admin/tests
  # POST /admin/tests.xml
  def create
    @admin_test = Admin::Test.new(params[:admin_test].merge(:user_id => current_user.id))

    respond_to do |format|
      if @admin_test.save
        format.html { redirect_to(@admin_test, :notice => 'Test was successfully created.') }
        format.xml  { render :xml => @admin_test, :status => :created, :location => @admin_test }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_test.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/tests/1
  # PUT /admin/tests/1.xml
  def update
    @admin_test = Admin::Test.find(params[:id])

    respond_to do |format|
      if @admin_test.update_attributes(params[:admin_test])
        format.html { redirect_to(@admin_test, :notice => 'Test was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_test.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/tests/1
  # DELETE /admin/tests/1.xml
  def destroy
    @admin_test = Admin::Test.find(params[:id])
    @admin_test.destroy

    respond_to do |format|
      format.html { redirect_to(admin_tests_url) }
      format.xml  { head :ok }
    end
  end
end
