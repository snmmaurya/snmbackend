class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  EMAIL_REGEX = /\A(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))\z/i

  NAME_REGEX = /\A[a-zA-Z0-9\s[.]]*\z/i

  PASSWORD_REGEX = /\A[a-zA-Z0-9\s[.]]*\z/i # /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[\S]{8,}\z/i

  STRING_REGEX = /\A[a-zA-Z0-9\s[.]-]*\z/i
end
