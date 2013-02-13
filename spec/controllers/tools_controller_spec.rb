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

describe ToolsController do

  # This should return the minimal set of attributes required to create a valid
  # Tool. As you add validations to Tool, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ToolsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all tools as @tools" do
      tool = Tool.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tools).should eq([tool])
    end
  end

  describe "GET show" do
    it "assigns the requested tool as @tool" do
      tool = Tool.create! valid_attributes
      get :show, {:id => tool.to_param}, valid_session
      assigns(:tool).should eq(tool)
    end
  end

  describe "GET new" do
    it "assigns a new tool as @tool" do
      get :new, {}, valid_session
      assigns(:tool).should be_a_new(Tool)
    end
  end

  describe "GET edit" do
    it "assigns the requested tool as @tool" do
      tool = Tool.create! valid_attributes
      get :edit, {:id => tool.to_param}, valid_session
      assigns(:tool).should eq(tool)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tool" do
        expect {
          post :create, {:tool => valid_attributes}, valid_session
        }.to change(Tool, :count).by(1)
      end

      it "assigns a newly created tool as @tool" do
        post :create, {:tool => valid_attributes}, valid_session
        assigns(:tool).should be_a(Tool)
        assigns(:tool).should be_persisted
      end

      it "redirects to the created tool" do
        post :create, {:tool => valid_attributes}, valid_session
        response.should redirect_to(Tool.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tool as @tool" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tool.any_instance.stub(:save).and_return(false)
        post :create, {:tool => {}}, valid_session
        assigns(:tool).should be_a_new(Tool)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tool.any_instance.stub(:save).and_return(false)
        post :create, {:tool => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tool" do
        tool = Tool.create! valid_attributes
        # Assuming there are no other tools in the database, this
        # specifies that the Tool created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Tool.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => tool.to_param, :tool => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested tool as @tool" do
        tool = Tool.create! valid_attributes
        put :update, {:id => tool.to_param, :tool => valid_attributes}, valid_session
        assigns(:tool).should eq(tool)
      end

      it "redirects to the tool" do
        tool = Tool.create! valid_attributes
        put :update, {:id => tool.to_param, :tool => valid_attributes}, valid_session
        response.should redirect_to(tool)
      end
    end

    describe "with invalid params" do
      it "assigns the tool as @tool" do
        tool = Tool.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tool.any_instance.stub(:save).and_return(false)
        put :update, {:id => tool.to_param, :tool => {}}, valid_session
        assigns(:tool).should eq(tool)
      end

      it "re-renders the 'edit' template" do
        tool = Tool.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tool.any_instance.stub(:save).and_return(false)
        put :update, {:id => tool.to_param, :tool => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tool" do
      tool = Tool.create! valid_attributes
      expect {
        delete :destroy, {:id => tool.to_param}, valid_session
      }.to change(Tool, :count).by(-1)
    end

    it "redirects to the tools list" do
      tool = Tool.create! valid_attributes
      delete :destroy, {:id => tool.to_param}, valid_session
      response.should redirect_to(tools_url)
    end
  end

end
