module DiffPrivacy

function get_multiple_parallel_databases(A)

    # Returns Array of length(A) with all the parallel databases generated and stored in parallel_databases

    parallel_databases = []
    
    for i in 1:length(A)
        x = get_parallel_databases(A, i)
        push!(parallel_databases, x)
    end
    
    return parallel_databases
end
