class Role < ActiveRecord::Base
has_many :auditions

def actors
 auditions.map do |name| name.actor
    end
 end

def locations
auditions.map do |locate| locate.location
    end
end

def leads
auditions.find_by(hired: true) or puts "no actor has been hired for this role"
end

def understudy 
auditions.where(["hired = :hired", {hired: true}]).second or puts "no actor has been hired for understudy for this role"
end

end
