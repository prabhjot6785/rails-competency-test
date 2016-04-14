class ArticlePolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def index?
    @current_user.admin?
  end

  def show?
    #@current_user.admin? or @current_user == @user
    @current_user == @user
  end

  def update?
    @current_user.editor?
  end
  
  def new?
    @current_user.editor?
  end
  
  def create?
    @current_user.editor?
  end
  
  def user_articles?
    @current_user.editor?
  end

  def destroy?
    return false if @current_user == @user
    @current_user.editior?
  end

end
