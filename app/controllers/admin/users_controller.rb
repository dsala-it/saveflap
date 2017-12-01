module Admin
  class UsersController < DefaultController

    responders :flash
    respond_to :html


    def index
      run Admin::User::Index
    end


    def new
      run Admin::User::Create::Present
    end


    def create
      run Admin::User::Create do |result|
        return respond_with result['model'], location: -> { admin_users_path }
      end
      render :new
    end


    def edit
      run Admin::User::Update::Present
    end


    def update
      run Admin::User::Update do |result|
        return respond_with result['model'], location: -> { admin_users_path }
      end
      render :edit
    end


    def destroy
      run Admin::User::Delete
      respond_with result['model'], location: -> { admin_users_path }
    end

  end
end