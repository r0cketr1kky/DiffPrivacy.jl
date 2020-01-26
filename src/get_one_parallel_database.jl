module DiffPrivacy

function get_one_parallel_database(A, remove_index)
    
    # Returns an array A, without the element at position remove_index, of size (1, length(A) - 1)
    
    
    return vcat(A[1:remove_index-1], A[remove_index+1:length(A)])'
end
