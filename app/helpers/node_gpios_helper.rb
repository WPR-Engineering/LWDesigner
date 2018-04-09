module NodeGpiosHelper
  def find_change_user(version_user)
    audit_user = User.find(version_user)
    audit_user ? audit_user.first_name + ' ' + audit_user.last_name : ''
  end
end
