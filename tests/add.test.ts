import { add } from '../src/add';

test('Sucessfully adds two numbers', () => {
  expect(add(2, 3)).toEqual(5);
});
