class Job < ApplicationRecord
  has_many :job_schedules

  accepts_nested_attributes_for :job_schedules
end
