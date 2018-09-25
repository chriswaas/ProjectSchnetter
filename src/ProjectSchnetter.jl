module ProjectSchnetter
#using Plots
export picture
function picture(o::Number, gamma::Number, x_0::Number, y_0::Number, v_x::Number, v_y::Number, deltaT::Number) # gamma =/=0
  omega = sqrt(o^2-gamma^2/4)
  A = sqrt(x_0^2+v_x^2/omega^2)
  B = sqrt(y_0^2+v_y^2/omega^2)
  len = max(trunc(Int, log(A)*20/(gamma*deltaT)), trunc(Int, log(B)*20/(gamma*deltaT)))
  x = zeros(Float64, len, 1)
  y = zeros(Float64, len, 1)
  t = 0
  for i = 1:length(x)
    x[i] = A*exp(-gamma/2*t)*cos(omega*t+acos(x_0/A))
    y[i] = B*exp(-gamma/2*t)*cos(omega*t+acos(y_0/B))
    t += deltaT
  end
  return x,y
end
#plot(x,y)

export bla
function bla(x)
  return x
end

end # module

#juno und revise nachschauen, juliabox
