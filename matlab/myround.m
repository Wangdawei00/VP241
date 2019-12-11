function [newdata,newuncertainty]=myround(data,uncertainty)
    newdata=data;
    newuncertainty=uncertainty;
    for i=1:length(data)
        newuncertainty(i)=round(uncertainty(i),roundnumber(uncertainty(i)));
        newdata(i)=round(data(i),roundnumber(uncertainty(i)));
    end
end
