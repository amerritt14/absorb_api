module AbsorbApi
  class Certificate < Base
    attr_reader :id, :enrollment_id, :full_name, :course_name, :acquired_date, :expiry_date, :notes

    def self.find(id)
      Certificate.new(api.get("certificates/#{id}").body)
    end
  end
end
