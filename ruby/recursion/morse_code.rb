#!/usr/bin/env ruby

$TREE =
{
  letter: nil,
  left: {
    letter: 'E',
    left: {
      letter: 'I',
      left:  {letter: 'S', left: nil, right: nil},
      right: {letter: 'U', left: nil, right: nil}
    },
    right: {
      letter: 'A',
      left:  {letter: 'R', left: nil, right: nil},
      right: {letter: 'W', left: nil, right: nil}
    }
  },
  right: {
    letter: 'T',
    left: {
      letter: 'N',
      left:  {letter: 'D', left: nil, right: nil},
      right: {letter: 'K', left: nil, right: nil}
    },
    right: {
      letter: 'M',
      left:  {letter: 'G', left: nil, right: nil},
      right: {letter: 'O', left: nil, right: nil}
    }
  }
}

#           nil
#      E            T
#   I    A       N     M
#  S U  R W    D  K   G  O

def main
  # Given a string return the appropriate letter.
  # For - go left and for . go right.
  #test_str = "-.?" # should return A
  test_str = "-.-"
  $response = []
  p morse_code(test_str)

end

def morse_code(str)
  char = str.slice!(0)

  if char == nil
    return $TREE[:letter]
  end


  if char == '-'
    $TREE = $TREE[:left]
    morse_code(str)

  elsif char == '.'
    # go right
    $TREE = $TREE[:right]
    morse_code(str)

  # elsif char == '?'
  #   morse_code("-#{str}")
  #   morse_code(".#{str}")
  end

end










main
