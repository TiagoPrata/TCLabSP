function result = ITAE( SP, PV, time )
%ITAE Integral Time Absolute Error
    e = SP - PV;
    e_abs = abs(e);
    e_abs_time = e_abs .* time;
    result = sum(e_abs_time);
end

