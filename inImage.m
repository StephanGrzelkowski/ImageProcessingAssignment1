function bool = inImage(sizeImage,x,y)
    if sizeImage(1) > x && sizeImage(2) > y 
       bool = true; 
    else 
        bool = false;
    end
end