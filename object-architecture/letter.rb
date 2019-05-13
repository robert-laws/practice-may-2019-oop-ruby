module Letter
  module InstanceMethods
    def send_letter
      "letter has been sent"
    end
  end

  module ClassMethods
    @@letters_sent = 0

    def letter_count
      @@letters_sent
    end

    def send_new_letter
      @@letters_sent += 1
    end
  end
end