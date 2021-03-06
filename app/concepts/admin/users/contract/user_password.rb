# frozen_string_literal: true

module Admin::Users::Contract
  module UserPassword
    extend ActiveSupport::Concern

    included do
      # Real attributes
      attribute :password
      attribute :password_confirmation

      # Virtual attributes (options)
      attr_accessor :created_password
      attr_accessor :create_options
      attr_accessor :send_by_mail

      # Validations
      validates :create_options, presence: true, inclusion: { in: %w[generate manual] }
    end


    def submit(params)
      super

      if create_options == 'generate'
        self.created_password      = Flap::Utils::Crypto.generate_secret(8)
        self.password              = created_password
        self.password_confirmation = created_password
      else
        self.created_password = params[:password]
      end
    end


    def send_email?
      send_by_mail.in? [true, '1']
    end

  end
end
