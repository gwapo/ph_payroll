class CompanyBranchesController < ApplicationController
  # GET /company_branches
  # GET /company_branches.xml
  def index
    @company_branches = CompanyBranch.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @company_branches }
    end
  end

  # GET /company_branches/1
  # GET /company_branches/1.xml
  def show
    @company_branch = CompanyBranch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @company_branch }
    end
  end

  # GET /company_branches/new
  # GET /company_branches/new.xml
  def new
    @company_branch = CompanyBranch.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @company_branch }
    end
  end

  # GET /company_branches/1/edit
  def edit
    @company_branch = CompanyBranch.find(params[:id])
  end

  # POST /company_branches
  # POST /company_branches.xml
  def create
    @company_branch = CompanyBranch.new(params[:company_branch])

    respond_to do |format|
      if @company_branch.save
        format.html { redirect_to(@company_branch, :notice => 'Company branch was successfully created.') }
        format.xml  { render :xml => @company_branch, :status => :created, :location => @company_branch }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @company_branch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /company_branches/1
  # PUT /company_branches/1.xml
  def update
    @company_branch = CompanyBranch.find(params[:id])

    respond_to do |format|
      if @company_branch.update_attributes(params[:company_branch])
        format.html { redirect_to(@company_branch, :notice => 'Company branch was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @company_branch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /company_branches/1
  # DELETE /company_branches/1.xml
  def destroy
    @company_branch = CompanyBranch.find(params[:id])
    @company_branch.destroy

    respond_to do |format|
      format.html { redirect_to(company_branches_url) }
      format.xml  { head :ok }
    end
  end
end
