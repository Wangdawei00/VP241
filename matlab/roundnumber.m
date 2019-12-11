function digit=roundnumber(number)
    if number~=0
        digit=-floor(log10(number));
        if 10^(-floor(log10(number)))*number<2
            digit=digit+1;
        end
    else 
        digit=0;
    end
end

