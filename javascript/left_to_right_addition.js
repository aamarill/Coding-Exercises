function leftToRightAddition(x, y) {
  var x_to_add, y_to_add, temp_sum, left_digit;
  var x_str = String(x);
  var y_str = String(y);
  var num_of_loops = Math.max(x_str.length, y_str.length);
  var final_sum = '';
  var carry_over = '0';
  var i = 0

  while(i < num_of_loops || carry_over != ''){
    x_to_add = Number(x_str.charAt(i));
    y_to_add = Number(y_str.charAt(i));

    temp_sum = String(x_to_add + y_to_add + Number(carry_over));

    left_digit = Number(temp_sum.charAt(0));
    carry_over = temp_sum.charAt(1);

    final_sum = final_sum + left_digit;
    ++i;
  }

  return Number(final_sum)
}


console.log(leftToRightAddition(1,10) == 20)
console.log(leftToRightAddition(51,51) == 12)
console.log(leftToRightAddition(99,99) == 126)
console.log(leftToRightAddition(346,5) == 846 )
console.log(leftToRightAddition(5,5) == 10 )
console.log(leftToRightAddition(0,0) == 0 )
console.log(leftToRightAddition(0,01) == 01 )
console.log(leftToRightAddition(0,010) == 010 )
console.log(leftToRightAddition(318432, 909) == 131142);
console.log(leftToRightAddition(5, 5) == 10);
