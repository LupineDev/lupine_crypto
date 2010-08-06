class Ceasar
  # class variables
  private
    # hash for letters -> numbers
    @@numbers = {
                  'A' => 1,
                  'B' => 2,
                  'C' => 3,
                  'D' => 4,
                  'E' => 5,
                  'F' => 6,
                  'G' => 7,
                  'H' => 8,
                  'I' => 9,
                  'J' => 10,
                  'K' => 11,
                  'L' => 12,
                  'M' => 13,
                  'N' => 14,
                  'O' => 15,
                  'P' => 16,
                  'Q' => 17,
                  'R' => 18,
                  'S' => 19,
                  'T' => 20,
                  'U' => 21,
                  'V' => 22,
                  'W' => 23,
                  'X' => 24,
                  'Y' => 25,
                  'Z' => 26,
                  ' ' => ' ',
                }
  
    # array for numbers -> letters
    @@letters = [ ' ', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ]

    # method for shifting numbers
    def shift(numbers, i)
      @numbers = numbers
      @shifted = ""
      @numbers.each_char do |num|
        unless num.eql?(' ') 
          @shifted << (num.to_i + i).to_s
        else
          @shifted << ' '
        end
      end
      @shifted
    end
    # method for returning mod 26
    def mod_26(n)
      n % 26
    end
  
  public
    # method for letters -> numbers
    def to_numbers(input_str)
      @alpha_str = input_str
      # string of numbers to return
      @num_str = ""
      @alpha_str.upcase!

      # loop through @alpa_str
      @alpha_str.each_char do |c|
        #turn letter into number
        @num_str << @@numbers[c].to_s
      end
      @num_str
    end
  
  # method for numbers -> letters
    def to_letters(input_str)
      @num_str = input_str

      #string of letters to return
      @alpha_str = ""

      # loop through num_str
      @num_str.each_char do |c|
        unless c.eql?(' ')
          @alpha_str << @@letters[mod_26(c.to_i)]
        else
          # char is ' '
          @alpha_str << ' '
        end
      end
      @alpha_str
    end
 

  # method for encrypting letters with shif N
    def encrypt(plaintext, n)
      @ciphertext = plaintext
      puts plaintext
      #convert to numbers
      @ciphertext = to_numbers(@ciphertext)
      
      #shift numbers n
      #@ciphertext = shift(@ciphertext, n)

      #convert back to letters
      @ciphertext = to_letters(@ciphertext)
    end

  # method for decrypting letters with shif N

end
