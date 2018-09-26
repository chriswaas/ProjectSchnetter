using ProjectSchnetter
using Plots
Plots.scalefontsizes(0.8)
using Distributions
import Distributions: Uniform
plotly()
for i = 1:4
  o = rand(17:47) #rand(Uniform(5,25))
  gamma = rand(0.5:6) #rand(Uniform(0.5,4))
  x = rand(-20:20) # rand(Uniform(-50,50))
  y = rand(-20:20) #rand(Uniform(-50,50))
  z = rand(-20:20) #rand(Uniform(-50,50))
  vx = rand(-100:100) #rand(Uniform(-60,60))
  vy = rand(-100:100) #rand(Uniform(-60,60))
  vz = rand(-100:100) #rand(Uniform(-60,60))
  if i <=2
    p = picture2d(o,gamma,x,y,vx,vy,0.005)
    t = string("omega = ",o, ", gamma = ",gamma, ", x_0 = ",x, ", y_0 = ",y, ", vx_0 = ",vx, ", vy_0 = ",vy)
    plot(p, title = t)
  else
    p = picture3d(o,gamma,x,y,z,vx,vy,vz,0.005)
    t = string("omega = ",o, ", gamma = ",gamma, ", x_0 = ",x, ", y_0 = ",y, ", z = ",z, ", vx_0 = ",vx, ", vy_0 = ",vy, ", vz_0 = ",vz)
    plot3d(p, title = t)
  end
  gui()
end
