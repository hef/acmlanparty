class InstancesController < ApplicationController
  # GET /lan_parties
  # GET /lan_parties.xml
  def index
    @lan_parties = Instance.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lan_parties }
    end
  end

  # GET /lan_parties/1
  # GET /lan_parties/1.xml
  def show
    @lan_party = Instance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lan_party }
    end
  end

  # GET /lan_parties/new
  # GET /lan_parties/new.xml
  def new
    @lan_party = Instance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lan_party }
    end
  end

  # GET /lan_parties/1/edit
  def edit
    @lan_party = Instance.find(params[:id])
  end

  # POST /lan_parties
  # POST /lan_parties.xml
  def create
    @lan_party = Instance.new(params[:lan_party])

    respond_to do |format|
      if @lan_party.save
        flash[:notice] = 'Instance was successfully created.'
        format.html { redirect_to(@lan_party) }
        format.xml  { render :xml => @lan_party, :status => :created, :location => @lan_party }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lan_party.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lan_parties/1
  # PUT /lan_parties/1.xml
  def update
    @lan_party = Instance.find(params[:id])

    respond_to do |format|
      if @lan_party.update_attributes(params[:lan_party])
        flash[:notice] = 'Instance was successfully updated.'
        format.html { redirect_to(@lan_party) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lan_party.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lan_parties/1
  # DELETE /lan_parties/1.xml
  def destroy
    @lan_party = Instance.find(params[:id])
    @lan_party.destroy

    respond_to do |format|
      format.html { redirect_to(lan_parties_url) }
      format.xml  { head :ok }
    end
  end
end
