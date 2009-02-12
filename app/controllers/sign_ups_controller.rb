class SignUpsController < ApplicationController
  skip_before_filter :login_required, :only=>[:new, :show]
   
   
  # GET /sign_ups
  # GET /sign_ups.xml
  def index
    @sign_ups = SignUp.find(:all)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sign_ups }
    end
  end

  # GET /sign_ups/1
  # GET /sign_ups/1.xml
  def show
    @sign_up = SignUp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sign_up }
    end
  end

  # GET /sign_ups/new
  # GET /sign_ups/new.xml
  def new
    @sign_up = SignUp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sign_up }
    end
  end

  # GET /sign_ups/1/edit
  def edit
    @sign_up = SignUp.find(params[:id])
  end

  # POST /sign_ups
  # POST /sign_ups.xml
  def create
    @sign_up = SignUp.new(params[:sign_up])

    respond_to do |format|
      if @sign_up.save
        Mail.deliver_confirmation
        flash[:notice] = 'SignUp was successfully created.'
        format.html { redirect_to(@sign_up) }
        format.xml  { render :xml => @sign_up, :status => :created, :location => @sign_up }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sign_up.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sign_ups/1
  # PUT /sign_ups/1.xml
  def update
    @sign_up = SignUp.find(params[:id])

    respond_to do |format|
      if @sign_up.update_attributes(params[:sign_up])
        flash[:notice] = 'SignUp was successfully updated.'
        format.html { redirect_to(@sign_up) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sign_up.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_ups/1
  # DELETE /sign_ups/1.xml
  def destroy
    @sign_up = SignUp.find(params[:id])
    @sign_up.destroy

    respond_to do |format|
      format.html { redirect_to(sign_ups_url) }
      format.xml  { head :ok }
    end
  end
end

