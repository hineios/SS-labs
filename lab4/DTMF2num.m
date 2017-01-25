function z = DTMF2num(x)
    [magnitude,phase] = fourierSeries(x);
   
    z='error';
    for i=1:1:length(magnitude)
        if magnitude(i) < 0.4
            magnitude(i) = 0;
        end
    end
    [peaks,locs] = findpeaks(magnitude);
    if (locs(1) >= 69) && (locs(1) <= 71)
        if (locs(2) >= 119) && (locs(1) <= 122)
            z = 1;
        end
        if (locs(2) >= 132) && (locs(1) <= 135)
            z = 2;
        end
        if (locs(2) >= 147) && (locs(1) <= 150)
            z = 3;
        end
    end
    if (locs(1) >= 76) && (locs(1) <= 78)
        if (locs(2) >= 119) && (locs(1) <= 122)
            z = 4;
        end
        if (locs(2) >= 132) && (locs(1) <= 135)
            z = 5;
        end
        if (locs(2) >= 147) && (locs(1) <= 150)
            z = 6;
        end
    end
    if (locs(1) >= 84) && (locs(1) <= 86)
        if (locs(2) >= 119) && (locs(1) <= 122)
            z = 7;
        end
        if (locs(2) >= 132) && (locs(1) <= 135)
            z = 8;
        end
        if (locs(2) >= 147) && (locs(1) <= 150)
            z = 9;
        end
    end
    if (locs(1) >= 93) && (locs(1) <= 95)
        if (locs(2) >= 119) && (locs(1) <= 122)
            z = '*';
        end
        if (locs(2) >= 132) && (locs(1) <= 135)
            z = 0;
        end
        if (locs(2) >= 147) && (locs(1) <= 150)
            z = '#';
        end
    end
end

