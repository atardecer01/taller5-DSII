const sum = require('./sum');
const mul = require('./mult');
const div = require('./div');

test('sums two numbers', () => {
  expect(sum(1, 2)).toBe(3);
 
});

test('mult two numbers', () => {
    expect(mul(1, 2)).toBe(2);
   
  });

  test('div two numbers', () => {
    expect(div(2, 2)).toBe(1);
   
  });