#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.5.1
# from Racc grammar file "".
#

require 'racc/parser.rb'
module Tomlrb
  class GeneratedParser < Racc::Parser
##### State transition tables begin ###

racc_action_table = [
     2,    43,    16,    41,    17,    42,    18,    44,    45,    19,
    20,    14,    21,    22,     8,     4,    10,    48,    49,    12,
    23,    39,    69,    70,    71,    72,    67,    68,    64,    65,
    62,    63,    66,    52,    36,    56,    46,    53,    12,    69,
    70,    71,    72,    67,    68,    64,    65,    62,    63,    66,
    84,    83,    56,    39,    75,    12,    69,    70,    71,    72,
    67,    68,    64,    65,    62,    63,    66,    88,    80,    56,
    86,    81,    12,    69,    70,    71,    72,    67,    68,    64,
    65,    62,    63,    66,    88,    41,    56,    86,   nil,    12,
    69,    70,    71,    72,    67,    68,    64,    65,    62,    63,
    66,    88,   nil,    56,    86,   nil,    12,    69,    70,    71,
    72,    67,    68,    64,    65,    62,    63,    66,    88,   nil,
    56,    86,    29,    12,    30,   nil,    31,   nil,   nil,    32,
    33,    27,    34,    35,    29,   nil,    30,    25,    31,   nil,
   nil,    32,    33,    78,    34,    35,    16,   nil,    17,    25,
    18,   nil,   nil,    19,    20,    74,    21,    22,    93,   nil,
   nil,    91,   nil,   nil,   nil,    92 ]

racc_action_check = [
     1,    13,     1,    11,     1,    13,     1,    24,    24,     1,
     1,     1,     1,     1,     1,     1,     1,    26,    26,     1,
     2,    11,    42,    42,    42,    42,    42,    42,    42,    42,
    42,    42,    42,    40,    10,    42,    25,    40,    42,    53,
    53,    53,    53,    53,    53,    53,    53,    53,    53,    53,
    54,    54,    53,    38,    48,    53,    55,    55,    55,    55,
    55,    55,    55,    55,    55,    55,    55,    55,    51,    55,
    55,    52,    55,    88,    88,    88,    88,    88,    88,    88,
    88,    88,    88,    88,    88,    80,    88,    88,   nil,    88,
    92,    92,    92,    92,    92,    92,    92,    92,    92,    92,
    92,    92,   nil,    92,    92,   nil,    92,    93,    93,    93,
    93,    93,    93,    93,    93,    93,    93,    93,    93,   nil,
    93,    93,     9,    93,     9,   nil,     9,   nil,   nil,     9,
     9,     9,     9,     9,    49,   nil,    49,     9,    49,   nil,
   nil,    49,    49,    49,    49,    49,    43,   nil,    43,    49,
    43,   nil,   nil,    43,    43,    43,    43,    43,    87,   nil,
   nil,    87,   nil,   nil,   nil,    87 ]

racc_action_pointer = [
   nil,     0,    20,   nil,   nil,   nil,   nil,   nil,   nil,   120,
    18,     1,   nil,   -17,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    -7,    19,     0,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    33,   nil,
    15,   nil,    19,   144,   nil,   nil,   nil,   nil,    37,   132,
   nil,    47,    69,    36,    36,    53,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    83,   nil,   nil,   nil,   nil,   nil,   nil,   144,    70,   nil,
   nil,   nil,    87,   104,   nil,   nil,   nil ]

racc_action_default = [
    -1,   -77,   -77,    -2,    -3,    -4,    -5,    -6,    -7,   -77,
   -11,   -77,   -31,   -77,   -43,   -44,   -45,   -46,   -47,   -48,
   -49,   -50,   -51,    97,   -77,   -13,   -77,   -20,   -21,   -22,
   -23,   -24,   -25,   -26,   -27,   -28,   -10,   -29,   -77,   -32,
   -77,   -37,   -65,   -77,    -8,    -9,   -12,   -14,   -16,   -77,
   -30,   -33,   -77,   -65,   -77,   -65,   -59,   -60,   -61,   -62,
   -63,   -64,   -66,   -67,   -68,   -69,   -70,   -71,   -72,   -73,
   -74,   -75,   -76,   -41,   -42,   -15,   -17,   -18,   -19,   -34,
   -77,   -36,   -38,   -39,   -40,   -52,   -53,   -77,   -65,   -35,
   -54,   -56,   -65,   -65,   -55,   -57,   -58 ]

racc_goto_table = [
    38,    15,    24,    85,    28,    37,    54,     1,     3,     5,
     6,     7,     9,    47,    51,    79,    13,    82,    90,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    50,   nil,   nil,   nil,    94,   nil,   nil,   nil,
    95,    96,    76,    73,    77,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    89 ]

racc_goto_check = [
    13,    19,     7,    22,    10,    12,    17,     1,     2,     3,
     4,     5,     6,     9,    15,    16,    18,    17,    23,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    12,   nil,   nil,   nil,    22,   nil,   nil,   nil,
    22,    22,     7,    19,    10,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    13 ]

racc_goto_pointer = [
   nil,     7,     7,     8,     9,    10,    11,    -7,   nil,   -13,
    -5,   nil,    -6,   -11,   nil,   -26,   -36,   -36,    15,     0,
   nil,   nil,   -52,   -69,   nil,   nil,   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,    59,   nil,   nil,    26,   nil,
   nil,    11,   nil,   nil,    40,   nil,   nil,    87,   nil,   nil,
    58,    55,   nil,   nil,    57,    60,    61 ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 24, :_reduce_none,
  2, 24, :_reduce_none,
  2, 24, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  3, 26, :_reduce_none,
  3, 26, :_reduce_none,
  2, 29, :_reduce_10,
  1, 29, :_reduce_11,
  2, 30, :_reduce_12,
  1, 30, :_reduce_13,
  2, 30, :_reduce_none,
  2, 32, :_reduce_15,
  1, 32, :_reduce_16,
  2, 32, :_reduce_none,
  3, 31, :_reduce_18,
  3, 31, :_reduce_19,
  1, 31, :_reduce_20,
  1, 31, :_reduce_21,
  1, 33, :_reduce_none,
  1, 33, :_reduce_none,
  1, 33, :_reduce_none,
  1, 33, :_reduce_none,
  1, 33, :_reduce_none,
  1, 33, :_reduce_none,
  1, 33, :_reduce_none,
  2, 28, :_reduce_none,
  3, 28, :_reduce_none,
  1, 34, :_reduce_31,
  1, 35, :_reduce_32,
  2, 36, :_reduce_none,
  3, 36, :_reduce_none,
  2, 39, :_reduce_none,
  3, 37, :_reduce_36,
  1, 37, :_reduce_37,
  2, 38, :_reduce_none,
  4, 27, :_reduce_39,
  4, 27, :_reduce_40,
  3, 41, :_reduce_41,
  3, 41, :_reduce_42,
  1, 41, :_reduce_43,
  1, 41, :_reduce_44,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  2, 43, :_reduce_none,
  1, 45, :_reduce_53,
  2, 45, :_reduce_none,
  2, 45, :_reduce_none,
  1, 46, :_reduce_56,
  2, 46, :_reduce_none,
  2, 46, :_reduce_none,
  1, 44, :_reduce_59,
  1, 40, :_reduce_60,
  1, 40, :_reduce_none,
  1, 40, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  0, 49, :_reduce_none,
  1, 49, :_reduce_66,
  1, 49, :_reduce_67,
  1, 49, :_reduce_68,
  1, 49, :_reduce_69,
  1, 49, :_reduce_70,
  1, 49, :_reduce_71,
  1, 49, :_reduce_72,
  1, 48, :_reduce_73,
  1, 48, :_reduce_74,
  1, 48, :_reduce_75,
  1, 48, :_reduce_76 ]

racc_reduce_n = 77

racc_shift_n = 97

racc_token_table = {
  false => 0,
  :error => 1,
  :IDENTIFIER => 2,
  :STRING_MULTI => 3,
  :STRING_BASIC => 4,
  :STRING_LITERAL_MULTI => 5,
  :STRING_LITERAL => 6,
  :DATETIME => 7,
  :LOCAL_TIME => 8,
  :INTEGER => 9,
  :NON_DEC_INTEGER => 10,
  :FLOAT => 11,
  :FLOAT_KEYWORD => 12,
  :BOOLEAN => 13,
  :NEWLINE => 14,
  :EOS => 15,
  "[" => 16,
  "]" => 17,
  "." => 18,
  "{" => 19,
  "}" => 20,
  "," => 21,
  "=" => 22 }

racc_nt_base = 23

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
  "IDENTIFIER",
  "STRING_MULTI",
  "STRING_BASIC",
  "STRING_LITERAL_MULTI",
  "STRING_LITERAL",
  "DATETIME",
  "LOCAL_TIME",
  "INTEGER",
  "NON_DEC_INTEGER",
  "FLOAT",
  "FLOAT_KEYWORD",
  "BOOLEAN",
  "NEWLINE",
  "EOS",
  "\"[\"",
  "\"]\"",
  "\".\"",
  "\"{\"",
  "\"}\"",
  "\",\"",
  "\"=\"",
  "$start",
  "expressions",
  "expression",
  "table",
  "assignment",
  "inline_table",
  "table_start",
  "table_continued",
  "table_identifier",
  "table_next",
  "table_identifier_component",
  "inline_table_start",
  "inline_table_end",
  "inline_continued",
  "inline_assignment_key",
  "inline_assignment_value",
  "inline_next",
  "value",
  "assignment_key",
  "assignment_key_component",
  "array",
  "start_array",
  "array_continued",
  "array_next",
  "scalar",
  "string",
  "literal" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

# reduce 3 omitted

# reduce 4 omitted

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

module_eval(<<'.,.,', 'parser.y', 18)
  def _reduce_10(val, _values, result)
     @handler.start_(:array_of_tables)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 19)
  def _reduce_11(val, _values, result)
     @handler.start_(:table)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 22)
  def _reduce_12(val, _values, result)
     array = @handler.end_(:array_of_tables); @handler.set_context(array, is_array_of_tables: true)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 23)
  def _reduce_13(val, _values, result)
     array = @handler.end_(:table); @handler.set_context(array)
    result
  end
.,.,

# reduce 14 omitted

module_eval(<<'.,.,', 'parser.y', 27)
  def _reduce_15(val, _values, result)
     array = @handler.end_(:array_of_tables); @handler.set_context(array, is_array_of_tables: true)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 28)
  def _reduce_16(val, _values, result)
     array = @handler.end_(:table); @handler.set_context(array)
    result
  end
.,.,

# reduce 17 omitted

module_eval(<<'.,.,', 'parser.y', 32)
  def _reduce_18(val, _values, result)
     @handler.push(val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 33)
  def _reduce_19(val, _values, result)
     val[2].split('.').each { |k| @handler.push(k) }
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 35)
  def _reduce_20(val, _values, result)
          keys = val[0].split('.')
      @handler.start_(:table)
      keys.each { |key| @handler.push(key) }

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 39)
  def _reduce_21(val, _values, result)
     @handler.push(val[0])
    result
  end
.,.,

# reduce 22 omitted

# reduce 23 omitted

# reduce 24 omitted

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

# reduce 28 omitted

# reduce 29 omitted

# reduce 30 omitted

module_eval(<<'.,.,', 'parser.y', 55)
  def _reduce_31(val, _values, result)
     @handler.start_(:inline)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 59)
  def _reduce_32(val, _values, result)
          array = @handler.end_(:inline)
      array.map!.with_index{ |n,i| i.even? ? n.to_sym : n } if @handler.symbolize_keys
      @handler.push(Hash[*array])

    result
  end
.,.,

# reduce 33 omitted

# reduce 34 omitted

# reduce 35 omitted

module_eval(<<'.,.,', 'parser.y', 73)
  def _reduce_36(val, _values, result)
          array = @handler.end_(:inline)
      array.each { |key| @handler.push(key) }
      @handler.start_(:inline)
      @handler.push(val[2])

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 78)
  def _reduce_37(val, _values, result)
     @handler.push(val[0])
    result
  end
.,.,

# reduce 38 omitted

module_eval(<<'.,.,', 'parser.y', 85)
  def _reduce_39(val, _values, result)
          keys = @handler.end_(:keys)
      @handler.push(keys.pop)
      @handler.assign(keys)

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 90)
  def _reduce_40(val, _values, result)
          keys = @handler.end_(:keys)
      @handler.push(keys.pop)
      @handler.assign(keys)

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 96)
  def _reduce_41(val, _values, result)
     @handler.push(val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 97)
  def _reduce_42(val, _values, result)
     val[2].split('.').each { |k| @handler.push(k) }
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 99)
  def _reduce_43(val, _values, result)
          keys = val[0].split('.')
      @handler.start_(:keys)
      keys.each { |key| @handler.push(key) }

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 103)
  def _reduce_44(val, _values, result)
     @handler.start_(:keys); @handler.push(val[0])
    result
  end
.,.,

# reduce 45 omitted

# reduce 46 omitted

# reduce 47 omitted

# reduce 48 omitted

# reduce 49 omitted

# reduce 50 omitted

# reduce 51 omitted

# reduce 52 omitted

module_eval(<<'.,.,', 'parser.y', 118)
  def _reduce_53(val, _values, result)
     array = @handler.end_(:array); @handler.push(array)
    result
  end
.,.,

# reduce 54 omitted

# reduce 55 omitted

module_eval(<<'.,.,', 'parser.y', 123)
  def _reduce_56(val, _values, result)
     array = @handler.end_(:array); @handler.push(array)
    result
  end
.,.,

# reduce 57 omitted

# reduce 58 omitted

module_eval(<<'.,.,', 'parser.y', 128)
  def _reduce_59(val, _values, result)
     @handler.start_(:array)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 131)
  def _reduce_60(val, _values, result)
     @handler.push(val[0])
    result
  end
.,.,

# reduce 61 omitted

# reduce 62 omitted

# reduce 63 omitted

# reduce 64 omitted

# reduce 65 omitted

module_eval(<<'.,.,', 'parser.y', 140)
  def _reduce_66(val, _values, result)
     result = val[0].to_f
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 142)
  def _reduce_67(val, _values, result)
          v = val[0]
      result = if v.end_with?('nan')
                 Float::NAN
               else
                 (v[0] == '-' ? -1 : 1) * Float::INFINITY
               end

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 149)
  def _reduce_68(val, _values, result)
     result = val[0].to_i
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 151)
  def _reduce_69(val, _values, result)
          base = case val[0][1]
             when "x" then 16
             when "o" then 8
             when "b" then 2
             end
      result = val[0].to_i(base)

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 158)
  def _reduce_70(val, _values, result)
     result = val[0] == 'true' ? true : false
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 160)
  def _reduce_71(val, _values, result)
          v = val[0]
      result = if v[6].nil?
                 if v[4].nil?
                   LocalDate.new(v[0], v[1], v[2])
                 else
                   LocalDateTime.new(v[0], v[1], v[2], v[3] || 0, v[4] || 0, v[5].to_f)
                 end
               else
                 Time.new(v[0], v[1], v[2], v[3] || 0, v[4] || 0, v[5].to_f, v[6])
               end

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 171)
  def _reduce_72(val, _values, result)
     result = LocalTime.new(*val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 174)
  def _reduce_73(val, _values, result)
     result = StringUtils.replace_escaped_chars(StringUtils.multiline_replacements(val[0]))
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 175)
  def _reduce_74(val, _values, result)
     result = StringUtils.replace_escaped_chars(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 176)
  def _reduce_75(val, _values, result)
     result = StringUtils.strip_spaces(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 177)
  def _reduce_76(val, _values, result)
     result = val[0]
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class GeneratedParser
end   # module Tomlrb
