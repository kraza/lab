class Admin::TestCategoriesController < ApplicationController
  # GET /admin/test_categories
  # GET /admin/test_categories.xml
  before_filter :authenticate_user!
  def index
    @admin_test_categories = Admin::TestCategory.where(:user_id => current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_test_categories }
    end
  end

  # GET /admin/test_categories/1
  # GET /admin/test_categories/1.xml
  def show
    @admin_test_category = Admin::TestCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_test_category }
    end
  end

  # GET /admin/test_categories/new
  # GET /admin/test_categories/new.xml
  def new
    @admin_test_category = Admin::TestCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_test_category }
    end
  end

  # GET /admin/test_categories/1/edit
  def edit
    @admin_test_category = Admin::TestCategory.find(params[:id])
  end

  # POST /admin/test_categories
  # POST /admin/test_categories.xml
  def create
    @admin_test_category = Admin::TestCategory.new(params[:admin_test_category].merge(:user_id => current_user.id))

    respond_to do |format|
      if @admin_test_category.save
        format.html { redirect_to(@admin_test_category, :notice => 'Test category was successfully created.') }
        format.xml  { render :xml => @admin_test_category, :status => :created, :location => @admin_test_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_test_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/test_categories/1
  # PUT /admin/test_categories/1.xml
  def update
    @admin_test_category = Admin::TestCategory.find(params[:id])

    respond_to do |format|
      if @admin_test_category.update_attributes(params[:admin_test_category])
        format.html { redirect_to(@admin_test_category, :notice => 'Test category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_test_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/test_categories/1
  # DELETE /admin/test_categories/1.xml
  def destroy
    @admin_test_category = Admin::TestCategory.find(params[:id])
    @admin_test_category.destroy

    respond_to do |format|
      format.html { redirect_to(admin_test_categories_url) }
      format.xml  { head :ok }
    end
  end
end
