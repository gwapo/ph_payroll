class Employee < ActiveRecord::Base
    belongs_to :company_branch
    belongs_to :position

end

