# frozen_string_literal: true

class Rabbits
  def get_reproduction(months)
    if months <= 0 then
      return false
    end

    return 1 if (months == 1) || (months == 2)

    get_reproduction(months - 1) + get_reproduction(months - 2)
  end
end
