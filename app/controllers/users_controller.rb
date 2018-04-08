class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate, only: [:new, :create, :confirm]

  # GET /users
  # GET /users.json
  def index
    @users = User.all.page params[:page]
    authorize! :index, User

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    authorize! :show, @user

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  def new
    @user = User.new
    authorize! :new, User

    render 'new', layout: 'login' unless can? :manage, User
  end

  # GET /users/1/edit
  def edit
    authorize! :edit, @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    authorize! :create, User

    respond_to do |format|
      if @user.save
        #UserMailer.confirmation(@user.id).deliver
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created }
      else
        format.html { render action: 'new', layout: 'login' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    authorize! :update, @user

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :bad_request }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    authorize! :destroy, @user

    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  # POST /users/confirm/key
  # POST /users/confirm/key.json
  def confirm
    @user = User.find_by(confirm_key: params[:key])

    respond_to do |format|
      if @user
        @user.update(confirmed: true, confirm_key: '')
        session[:user_id] = @user.id
        format.html { redirect_to root_url, notice: 'Your email has been confirmed' }
        format.json { render json: @user, status: :no_content }
      else
        format.html { redirect_to root_url }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      if can? :manage, @user
        params.require(:user).permit(:first_name, :last_name, :email, :phone, :group, :external_id, :password, :active, :role, :password_confirmation)
      else
        params.require(:user).permit(:first_name, :last_name, :email, :phone, :group, :external_id, :password, :password_confirmation)
      end
    end
end
