function result = IAE( SP, PV )
%IAE Integral Absolute Error
    e = SP - PV;
    e_abs = abs(e);
    result = sum(e_abs);
end

