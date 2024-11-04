function arr2csv(filename, array)
  if ndims(array) ~= 2

    error('Array must be 2-dimensional.');

  end


  % Create a cell array to store the strings

  cell_array = cell([size(array)]);


  % Convert each string to a cell

  for i = 1:size(array, 1)

    for j = 1:size(array, 2)

      cell_array{i, j} = array(i, j);

    end

  end


  % Save the cell array to a CSV file

  csvwrite(filename, cell_array);
endfunction
