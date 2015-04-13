class Cert < ActiveRecord::Base

  belongs_to :user

  validates :cert_title, presence: true
  validates :cert_startdate, presence: true
  validates :cert_expiredate, presence: true

end
