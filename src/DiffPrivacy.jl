module DiffPrivacy


function get_one_parallel_database(A, remove_index)
    
    # Returns an array A, without the element at position remove_index, of size (1, length(A) - 1)
    
    
    return vcat(A[1:remove_index-1], A[remove_index+1:length(A)])'
end


function get_multiple_parallel_databases(A)

    # Returns Array of length(A) with all the parallel databases generated and stored in parallel_databases

    parallel_databases = []
    
    for i in 1:length(A)
        x = get_one_parallel_database(A, i)
        push!(parallel_databases, x)
    end
    
    return parallel_databases
end


function sum_sensitivity(A)
    
    db = A
    pdbs = get_multiple_parallel_databases(A)
    
    full_db_result = sum(db)
    
    max_distance = 0
    for pdb in pdbs
        pdb_result = sum(pdb)
    
        db_distance = abs(pdb_result - full_db_result)
    
        if(db_distance > max_distance)
            max_distance = db_distance
        end
    end
    
    return max_distance
end



function mean_sensitivity(A)
    
    db = A
    pdbs = get_multiple_parallel_databases(A)
    
    full_db_result = sum(db) / length(db)
    
    max_distance = 0
    for pdb in pdbs
        pdb_result = sum(pdb) / length(pdb)
    
        db_distance = abs(pdb_result - full_db_result)
    
        if(db_distance > max_distance)
            max_distance = db_distance
        end
    end
    
    return max_distance
end



function sum_sensitive_query(A, threshold)
    if sum(A) > threshold
        return 1
    else
        return 0
    end
end

function sum_sensivity_threshold(A, threshold)
    
    db = A
    pdbs = get_multiple_parallel_databases(A)
    
    full_db_result = sum_sensitivity_query(db, threshold)
    
    max_distance = 0
    for pdb in pdbs
        pdb_result = sum_sensitivity_query(pdb, threshold)
        
        db_distance = abs(pdb_result - full_db_result)
    
        if(db_distance > max_distance)
            max_distance = db_distance
        end
    end
    
    return max_distance
end


export DiffPrivacy

end # module

