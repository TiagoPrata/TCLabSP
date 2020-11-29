function result = ITSE( SP, PV, time )
%ITSE Integral Time Squared Error
    e = SP - PV;
    e_sq = e .* e;
    e_sq_time = time .* e_sq;
    result = sum(e_sq_time);
end

