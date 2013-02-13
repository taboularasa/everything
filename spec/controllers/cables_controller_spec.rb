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

describe CablesController do

  # This should return the minimal set of attributes required to create a valid
  # Cable. As you add validations to Cable, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CablesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all cables as @cables" do
      cable = Cable.create! valid_attributes
      get :index, {}, valid_session
      assigns(:cables).should eq([cable])
    end
  end

  describe "GET show" do
    it "assigns the requested cable as @cable" do
      cable = Cable.create! valid_attributes
      get :show, {:id => cable.to_param}, valid_session
      assigns(:cable).should eq(cable)
    end
  end

  describe "GET new" do
    it "assigns a new cable as @cable" do
      get :new, {}, valid_session
      assigns(:cable).should be_a_new(Cable)
    end
  end

  describe "GET edit" do
    it "assigns the requested cable as @cable" do
      cable = Cable.create! valid_attributes
      get :edit, {:id => cable.to_param}, valid_session
      assigns(:cable).should eq(cable)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Cable" do
        expect {
          post :create, {:cable => valid_attributes}, valid_session
        }.to change(Cable, :count).by(1)
      end

      it "assigns a newly created cable as @cable" do
        post :create, {:cable => valid_attributes}, valid_session
        assigns(:cable).should be_a(Cable)
        assigns(:cable).should be_persisted
      end

      it "redirects to the created cable" do
        post :create, {:cable => valid_attributes}, valid_session
        response.should redirect_to(Cable.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cable as @cable" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cable.any_instance.stub(:save).and_return(false)
        post :create, {:cable => {}}, valid_session
        assigns(:cable).should be_a_new(Cable)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cable.any_instance.stub(:save).and_return(false)
        post :create, {:cable => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested cable" do
        cable = Cable.create! valid_attributes
        # Assuming there are no other cables in the database, this
        # specifies that the Cable created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Cable.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => cable.to_param, :cable => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested cable as @cable" do
        cable = Cable.create! valid_attributes
        put :update, {:id => cable.to_param, :cable => valid_attributes}, valid_session
        assigns(:cable).should eq(cable)
      end

      it "redirects to the cable" do
        cable = Cable.create! valid_attributes
        put :update, {:id => cable.to_param, :cable => valid_attributes}, valid_session
        response.should redirect_to(cable)
      end
    end

    describe "with invalid params" do
      it "assigns the cable as @cable" do
        cable = Cable.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cable.any_instance.stub(:save).and_return(false)
        put :update, {:id => cable.to_param, :cable => {}}, valid_session
        assigns(:cable).should eq(cable)
      end

      it "re-renders the 'edit' template" do
        cable = Cable.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cable.any_instance.stub(:save).and_return(false)
        put :update, {:id => cable.to_param, :cable => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested cable" do
      cable = Cable.create! valid_attributes
      expect {
        delete :destroy, {:id => cable.to_param}, valid_session
      }.to change(Cable, :count).by(-1)
    end

    it "redirects to the cables list" do
      cable = Cable.create! valid_attributes
      delete :destroy, {:id => cable.to_param}, valid_session
      response.should redirect_to(cables_url)
    end
  end

end
