module DiffPrivacy

include("get_one_parallel_database.jl")
include("get_multiple_parallel_databases.jl")


function sensitivity(A, query, n)
    
    db = A
    pdbs = get_multiple_parallel_databases(A)
    
    full_db_result = query(db,threshold)
    
    max_distance = 0
    for pdb in pdbs
        pdb_result = query(pdb,threshold)
    
        db_distance = abs(pdb_result - full_db_result)
    
        if(db_distance > max_distance)
            max_distance = db_distance
        end
    end
    
    return max_distance
end

function query(A, threshold)
    if sum(A) > threshold
        return 1
    else
        return 0
    end
end

function sum_threshold_sensitivity(A, n)
  for i in 1:n
    sens_f = sensitivity(A, query, n)
    println(sens_f)
end
