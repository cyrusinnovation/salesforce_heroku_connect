class Contact < ActiveRecord::Base
  include ::SalesForceModel
  belongs_to :account, :primary_key => "sfid", :foreign_key => "accountid"

  def self.table_name
    'contact'
  end

end