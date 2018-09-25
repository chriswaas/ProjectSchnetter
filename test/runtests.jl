using ProjectSchnetter
using Plots
Plots.scalefontsizes(0.5)
using Distributions
import Distributions: Uniform
plotly()
for i in 1:5
  o = rand(17:47) #rand(Uniform(5,25))
  gamma = rand(0.5:6) #rand(Uniform(0.5,4))
  x = rand(-20:20) # rand(Uniform(-50,50))
  y = rand(-20:20) #rand(Uniform(-50,50))
  vx = rand(-100:100) #rand(Uniform(-60,60))
  vy = rand(-100:100) #rand(Uniform(-60,60))
  p = picture(o,gamma,x,y,vx,vy,0.005)
  t = string(o, ", ",gamma, ", ",x, ", ",y, ", ",vx, ", ",vy)
  plot(p, title = t)
  gui()
end
sleep(10)
