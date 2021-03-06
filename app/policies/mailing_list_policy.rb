# frozen_string_literal: true

class MailingListPolicy < ApplicationPolicy
  include PolicyHelper

  def permitted_attributes
    [:name, :email, :description, :enabled, emails_attributes: [:first_name, :last_name, :email, :_destroy, :id]]
  end

end
