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

describe TipsController do

  # This should return the minimal set of attributes required to create a valid
  # Tip. As you add validations to Tip, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "tip" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TipsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all tips as @tips" do
      tip = Tip.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tips).should eq([tip])
    end
  end

  describe "GET show" do
    it "assigns the requested tip as @tip" do
      tip = Tip.create! valid_attributes
      get :show, {:id => tip.to_param}, valid_session
      assigns(:tip).should eq(tip)
    end
  end

  describe "GET new" do
    it "assigns a new tip as @tip" do
      get :new, {}, valid_session
      assigns(:tip).should be_a_new(Tip)
    end
  end

  describe "GET edit" do
    it "assigns the requested tip as @tip" do
      tip = Tip.create! valid_attributes
      get :edit, {:id => tip.to_param}, valid_session
      assigns(:tip).should eq(tip)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tip" do
        expect {
          post :create, {:tip => valid_attributes}, valid_session
        }.to change(Tip, :count).by(1)
      end

      it "assigns a newly created tip as @tip" do
        post :create, {:tip => valid_attributes}, valid_session
        assigns(:tip).should be_a(Tip)
        assigns(:tip).should be_persisted
      end

      it "redirects to the created tip" do
        post :create, {:tip => valid_attributes}, valid_session
        response.should redirect_to(Tip.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tip as @tip" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tip.any_instance.stub(:save).and_return(false)
        post :create, {:tip => { "tip" => "invalid value" }}, valid_session
        assigns(:tip).should be_a_new(Tip)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tip.any_instance.stub(:save).and_return(false)
        post :create, {:tip => { "tip" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tip" do
        tip = Tip.create! valid_attributes
        # Assuming there are no other tips in the database, this
        # specifies that the Tip created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Tip.any_instance.should_receive(:update).with({ "tip" => "MyString" })
        put :update, {:id => tip.to_param, :tip => { "tip" => "MyString" }}, valid_session
      end

      it "assigns the requested tip as @tip" do
        tip = Tip.create! valid_attributes
        put :update, {:id => tip.to_param, :tip => valid_attributes}, valid_session
        assigns(:tip).should eq(tip)
      end

      it "redirects to the tip" do
        tip = Tip.create! valid_attributes
        put :update, {:id => tip.to_param, :tip => valid_attributes}, valid_session
        response.should redirect_to(tip)
      end
    end

    describe "with invalid params" do
      it "assigns the tip as @tip" do
        tip = Tip.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tip.any_instance.stub(:save).and_return(false)
        put :update, {:id => tip.to_param, :tip => { "tip" => "invalid value" }}, valid_session
        assigns(:tip).should eq(tip)
      end

      it "re-renders the 'edit' template" do
        tip = Tip.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tip.any_instance.stub(:save).and_return(false)
        put :update, {:id => tip.to_param, :tip => { "tip" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tip" do
      tip = Tip.create! valid_attributes
      expect {
        delete :destroy, {:id => tip.to_param}, valid_session
      }.to change(Tip, :count).by(-1)
    end

    it "redirects to the tips list" do
      tip = Tip.create! valid_attributes
      delete :destroy, {:id => tip.to_param}, valid_session
      response.should redirect_to(tips_url)
    end
  end

end
