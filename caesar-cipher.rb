def caesar_cipher(text, shift)
  encrypted = ""
  text.each_char do |character|
    if character.match(/[a-zA-Z]/)
      base = character.downcase == character ? "a" : "A"
      index = (character.ord - base.ord + shift) % 26
      encrypted += (base.ord + index).chr
    else
      encrypted += character
    end
  end
  return encrypted
end

puts "Enter the message to encrypt:"
message = gets.chomp

puts "Enter the shift value:"
shift = gets.chomp.to_i

encrypted_message = caesar_cipher(message, shift)
puts "Encrypted message: #{encrypted_message}"

decrypted_message = caesar_cipher(encrypted_message, -shift)
puts "Decrypted message: #{decrypted_message}"
