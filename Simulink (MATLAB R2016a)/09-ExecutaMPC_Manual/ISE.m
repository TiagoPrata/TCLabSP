function result = ISE( SP, PV )
%ISE Integral Squared Error
    e = SP - PV;
    e_sq = e .* e;
    result = sum(e_sq);
end

