class Attendee
  def initialize(height, pass_id = nil)
    @height = height
    @pass_id = pass_id
  end

  def height
    @height
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
    return @pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end

attendee_with_pass = Attendee.new(160)
issued_pass_id = attendee_with_pass.issue_pass!(42)
attendee_with_pass.revoke_pass!
attendee_without_pass = Attendee.new(106)

puts "Attendee height: #{attendee_with_pass.height}"
puts "Attendee with pass ID: #{issued_pass_id}"
puts "Attendee with pass ID after revoke: #{attendee_with_pass.pass_id}"
puts "Attendee without pass ID: #{attendee_without_pass.pass_id}"
