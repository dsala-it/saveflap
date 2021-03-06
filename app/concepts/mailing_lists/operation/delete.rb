# frozen_string_literal: true

class MailingLists::Delete < Trailblazer::Operation
  step Model(MailingList, :find)
  step :delete!
  step :update_ldap!


  def delete!(_options, model:, **)
    model.destroy
  end

  def update_ldap!(_options, model:, **)
    params = { email: model.email }
    LDAP::Delete.(params: params)
  end
end
