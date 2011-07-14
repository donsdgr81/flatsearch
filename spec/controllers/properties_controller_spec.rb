require 'spec_helper'

describe PropertiesController do

  def valid_attributes
    FactoryGirl.attributes_for(:property_1)
  end

  describe "GET index" do
    it "assigns all properties as @properties" do
      property = Property.create! valid_attributes
      get :index
      assigns(:properties).should eq([property])
    end
  end

  describe "GET show" do
    it "assigns the requested property as @property" do
      property = Property.create! valid_attributes
      get :show, :id => property.id.to_s
      assigns(:property).should eq(property)
    end
  end

  describe "GET new" do
    it "assigns a new property as @property" do
      get :new
      assigns(:property).should be_a_new(Property)
    end
  end

  describe "GET edit" do
    it "assigns the requested property as @property" do
      property = Property.create! valid_attributes
      get :edit, :id => property.id.to_s
      assigns(:property).should eq(property)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Property" do
        expect {
          post :create, :property => valid_attributes
        }.to change(Property, :count).by(1)
      end

      it "assigns a newly created property as @property" do
        post :create, :property => valid_attributes
        assigns(:property).should be_a(Property)
        assigns(:property).should be_persisted
      end

      it "redirects to the created property" do
        post :create, :property => valid_attributes
        response.should redirect_to(Property.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved property as @property" do
        # Trigger the behavior that occurs when invalid params are submitted
        Property.any_instance.stub(:save).and_return(false)
        post :create, :property => {}
        assigns(:property).should be_a_new(Property)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Property.any_instance.stub(:save).and_return(false)
        post :create, :property => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested property" do
        property = Property.create! valid_attributes
        # Assuming there are no other properties in the database, this
        # specifies that the Property created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Property.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => property.id, :property => {'these' => 'params'}
      end

      it "assigns the requested property as @property" do
        property = Property.create! valid_attributes
        put :update, :id => property.id, :property => valid_attributes
        assigns(:property).should eq(property)
      end

      it "redirects to the property" do
        property = Property.create! valid_attributes
        put :update, :id => property.id, :property => valid_attributes
        response.should redirect_to(property)
      end
    end

    describe "with invalid params" do
      it "assigns the property as @property" do
        property = Property.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Property.any_instance.stub(:save).and_return(false)
        put :update, :id => property.id.to_s, :property => {}
        assigns(:property).should eq(property)
      end

      it "re-renders the 'edit' template" do
        property = Property.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Property.any_instance.stub(:save).and_return(false)
        put :update, :id => property.id.to_s, :property => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested property" do
      property = Property.create! valid_attributes
      expect {
        delete :destroy, :id => property.id.to_s
      }.to change(Property, :count).by(-1)
    end

    it "redirects to the properties list" do
      property = Property.create! valid_attributes
      delete :destroy, :id => property.id.to_s
      response.should redirect_to(properties_url)
    end
  end

end
