import { add, subtract } from '../src/add';

test('Sucessfully adds two numbers', () => {
  expect(add(2, 3)).toEqual(5);
});

test('Sucessfully subtracts two numbers', () => {
  expect(subtract(10, 4)).toEqual(6);

  expect(subtract(4, 8)).toEqual(-4);
});
