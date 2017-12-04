class Admin::Users::Password < Trailblazer::Operation

  class Present < Trailblazer::Operation
    step Model(User, :find_by)
    step Contract::Build(constant: Admin::Users::Contract::Password)
  end

  step Nested(Present)
  step Contract::Validate(key: :user)
  step Contract::Persist()
  step :notify!


  def notify!(options, model:, **)
    form = options['contract.default']
    if form.send_email?
      DeviseMailer.password_change(model, password: form.created_password).deliver_now
    end
    true
  end

end