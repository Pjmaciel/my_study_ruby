class Attendee
  def initialize(height, pass_id = nil)
    @height = height
    @pass_id = pass_id
    @fits_ride = fits_ride
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
    !@pass_id.nil?
  end

   def has_pass?
        if @height == 100 
            return false
        else
            return true
        end
  end

  def fits_ride?(ride_minimum_height)    
    @height >= ride_minimum_height
    
  end

  def allowed_to_ride?(ride_minimum_height)
     fits_ride?(ride_minimum_height) && has_pass?
    end

  end

end

attendee = Attendee.new(140)
issued_pass_id = attendee.has_pass?
fits_ride = attendee.fits_ride?(99)

puts "Attendee height: #{attendee.height}"
puts "Attendee with pass ID: #{issued_pass_id}"
puts "fists_ride: #{fits_ride}"