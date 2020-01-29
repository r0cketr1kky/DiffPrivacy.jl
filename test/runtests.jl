using DiffPrivacy


@info "Testing one parallel database"
x = [1,2,3,4,5,6,7,8,9]
y = get_one_parallel_database(x, 2)
@test y == [1,3,4,5,6,7,8,9]


@info "Testing multiple parallel databases"
x = [1,2,3,4]
y = get_multiple_parallel_databases(x)
@test y == [[2,3,4],[1,3,4],[1,2,4],[1,2,3]]


@info "Testing sum sensitivity"
x = [1,2,3,4]
y = sum_sensitivity(x)
@test y == 4


@info "Testing mean sensitivity"
x = [3,6,9,12]
y = mean_sensitivity(x)
@test y == 1.5


@info "All tests completed"
  
  
