# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  email              :string
#  name               :string
#  salt               :string
#  encrypted_password :string
#  icon               :text
#  bio                :text
#  role               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  auth               :string
#

require 'digest'
require 'base64'

class User < ApplicationRecord

  ROLE = %w(SITE_ADMIN ADMIN USER)
  attr_accessor :password, :group_admin_accessor, :site_admin_accessor

  validates :email, presence: true
  validates :email, uniqueness: true

  def update_password(pass)
    self.salt = SecureRandom.hex
    self.encrypted_password = entrypt_password(pass)
    self.auth = Base64.encode64 "#{self.email}:#{pass}"

    self
  end

  def display
    self.name || self.email
  end

  def default_icon
    :user
  end

  def password_valid?(pass)
    self.encrypted_password == entrypt_password(pass)
  end

  def admin?(group)
    self.admin_groups.include? group
  end

  def site_admin?
    self.admin?(Group.default_group)
  end

  private
  def entrypt_password(pass)
    Digest::MD5.hexdigest self.salt + pass
  end
end
