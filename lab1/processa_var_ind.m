function y = processa_var_ind(x,a,b)
    t = size(x)-b;
    
    j=1;
    if a < 0
        for i = t(1):a:1
            y(j,1) = x(i+b,1);
            j = j+1;
        end
    else
        for i = 1:a:t(1)
            y(j,1) = x(i+b,1);
            j = j+1;
        end
    end
     
%     if a == 1
%         y = x;
%     else
%         if a < 0
%             if abs(a) > 1
%                 for i = 1:a:t(1)
%                     z(j,1) = x(i,1);
%                     j = j+1;
%                 end
%             else
%                 if abs(a) < 1
%                     for i = 1:t(1)
%                         z(j,1) = x(i,1);
%                         j = j + 1/a;
%                     end
%                 end
%             end
%             p = t(1)*(1/abs(a));
%             y = zeros(p);
%             j = p(1);
%             for i = 1:p(1)
%                 y(i,1) = z(j,1);
%                 j = j-1;
%             end
%         else
%             if a > 1
%                 for i = 1:a:t(1)
%                     y(j,1) = x(i,1);
%                     j = j+1;
%                 end
%             else
%                 if a < 1
%                     for i = 1:t(1)
%                         y(j,1) = x(i,1);
%                         j = j + 1/a;
%                     end
%                 end
%             end
%         end
%     end
%     
%     if b ~= 0
%     end
% end
%         
% 
