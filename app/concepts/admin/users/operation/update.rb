# frozen_string_literal: true

class Admin::Users::Update < Trailblazer::Operation

  class Present < Trailblazer::Operation
    step Model(User, :find)
    step Contract::Build(constant: Admin::Users::Contract::Update)
  end

  step Policy::Pundit::Params(Admin::UserPolicy, key: :user, method: :permitted_attributes_for_update)
  step Nested(Present)
  step Contract::Validate(key: :user)
  step Contract::Persist()
end
