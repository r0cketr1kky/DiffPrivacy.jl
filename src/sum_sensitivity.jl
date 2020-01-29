module DiffPrivacy

include("get_one_parallel_database.jl")
include("get_multiple_parallel_databases.jl")


function sensitivity(A)
    
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
