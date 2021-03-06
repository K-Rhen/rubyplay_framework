#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.14
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require_relative 'gameLexer'

class GameLanguage < Racc::Parser

module_eval(<<'...end gameParser.racc/module_eval...', 'gameParser.racc', 16)
  @@functions = []
  
  def parse(object, input)
    output = scan_str(input)
    if(output.kind_of?(Array))
    	if(@@functions.find { |f| (f[0] == output[0]) && (f.length == output.length) })
  			object.public_send(output[0].to_sym, *(output.drop(1)))
  		else
  			raise RuntimeError, "No such function #{output[0]}"
  	    end
    else
    	if(@@functions.find { |f| (f[0] == output) })
  			object.public_send(output.to_sym)
  		else
  			raise RuntimeError, "No such function #{output}"
  	    end
    end
  end
  
  def intialize_functions(filename)
  	file = File.open(filename).read
  	file.each_line { |line| 
  		@@functions << line.gsub(/\s+/, ' ').strip.split(" ")
  	}
  end
...end gameParser.racc/module_eval...
##### State transition tables begin ###

racc_action_table = [
     4,     5,     7,     2,     6,     3,     8,     9,    10,    11 ]

racc_action_check = [
     2,     2,     4,     0,     3,     1,     5,     7,     8,     9 ]

racc_action_pointer = [
     1,     5,    -3,     4,    -1,     2,   nil,     4,     4,     6,
   nil,   nil ]

racc_action_default = [
    -8,    -8,    -1,    -8,    -2,    -8,    12,    -3,    -6,    -4,
    -7,    -5 ]

racc_goto_table = [
     1 ]

racc_goto_check = [
     1 ]

racc_goto_pointer = [
   nil,     0 ]

racc_goto_default = [
   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 6, :_reduce_none,
  2, 6, :_reduce_2,
  3, 6, :_reduce_3,
  4, 6, :_reduce_4,
  5, 6, :_reduce_5,
  3, 6, :_reduce_6,
  4, 6, :_reduce_7 ]

racc_reduce_n = 8

racc_shift_n = 12

racc_token_table = {
  false => 0,
  :error => 1,
  :FUNCTION => 2,
  :WORD => 3,
  :NUMBER => 4 }

racc_nt_base = 5

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "FUNCTION",
  "WORD",
  "NUMBER",
  "$start",
  "function" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

module_eval(<<'.,.,', 'gameParser.racc', 3)
  def _reduce_2(val, _values, result)
     return val 
    result
  end
.,.,

module_eval(<<'.,.,', 'gameParser.racc', 4)
  def _reduce_3(val, _values, result)
     return val 
    result
  end
.,.,

module_eval(<<'.,.,', 'gameParser.racc', 5)
  def _reduce_4(val, _values, result)
     return val 
    result
  end
.,.,

module_eval(<<'.,.,', 'gameParser.racc', 6)
  def _reduce_5(val, _values, result)
     return val 
    result
  end
.,.,

module_eval(<<'.,.,', 'gameParser.racc', 7)
  def _reduce_6(val, _values, result)
     return val 
    result
  end
.,.,

module_eval(<<'.,.,', 'gameParser.racc', 8)
  def _reduce_7(val, _values, result)
     return val 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class GameLanguage
