json.extract! job_schedule, :id, :job_id, :name, :created_at, :updated_at
json.url job_schedule_url(job_schedule, format: :json)
