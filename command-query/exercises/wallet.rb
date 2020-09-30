class Wallet
  def initialize
    @cents = 0
    @wallet = []
    @denominations = {
                        penny: 1,
                        nickel: 5,
                        dime: 10,
                        quarter: 25,
                        dollar: 100
                      }
  end

  def cents
    @wallet.sum
  end

  def << (note)
    @wallet << @denominations.fetch(note)
  end

  def take(*notes)
    notes.each do |note|
      note_amt = @denominations.fetch(note)
      index = @wallet.find_index(note_amt)
      if index.nil?
        next
      end
      @wallet.delete_at(@wallet.index(note_amt))
    end
  end
end
