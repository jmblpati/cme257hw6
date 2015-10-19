module cme257hw6

function jset{T <: Number}(R::Function, x::Array{T,1}, y::Array{T,1}, n_iter::Int64 = 100, escape_tol::Float64 = 100.)
    A = zeros(length(x), length(y))
    for i in 1:length(x)
        for j in 1:length(y)
            z = x[i] + im * y[j]
            k = 0
            while k <= n_iter && abs(z) < escape_tol
                z = R(z)
                k = k + 1
            end
            A[i,j] = k
        end
    end
    return A
end

function jset_viz{T<:Number}(R::Function, x::Array{T,1}, y::Array{T,1}, n_iter::Int64, escape_tol::Float64)
    return spy(jset(R::Function, x::Array{T,1}, y::Array{T,1}, n_iter::Int64, escape_tol::Float64))
end

end # module
