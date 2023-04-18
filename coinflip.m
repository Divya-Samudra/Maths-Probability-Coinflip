clc;
clear;
k = input('Number of tosses:');
n=0;
H=0;
T=0;
while n <= k
      n=n+1;
      R = randi([1,2]);
      if R == 1
          H=H+1;
          
      end
      if R == 2
          T=T+1;
          
      end
      H_percent(n) = H/n*100.0;
end

N=(1:n);
      plot(N,H_percent,'-r', 'LineWidth',2)
      hold on;
      plot(N,H_percent,'r.')
      axis([0 k 0 100])
      grid on
      xlabel('Number of tosses')
      ylabel('Percentage of heads')
      title('Percentage of heads obtained')
      txt1 = sprintf('No. of tosses = %.2f',n-1);
      txt2 = sprintf('Final probability = %.2f', H_percent(n))
legend(txt1,txt2)