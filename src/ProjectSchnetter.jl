module ProjectSchnetter

export picture2d
function picture2d(o::Number, gamma::Number, x_0::Number, y_0::Number, v_x::Number, v_y::Number, deltaT::Number) # gamma =/=0
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

export picture3d
function picture3d(o::Number, gamma::Number, x_0::Number, y_0::Number,z_0::Number, v_x::Number, v_y::Number, v_z::Number, deltaT::Number) # gamma =/=0
  omega = sqrt(o^2-gamma^2/4)
  A = sqrt(x_0^2+v_x^2/omega^2)
  B = sqrt(y_0^2+v_y^2/omega^2)
  C = sqrt(z_0^2+v_z^2/omega^2)
  len = max(trunc(Int, log(A)*20/(gamma*deltaT)), trunc(Int, log(B)*20/(gamma*deltaT)),trunc(Int, log(C)*20/(gamma*deltaT)))
  x = zeros(Float64, len, 1)
  y = zeros(Float64, len, 1)
  z = zeros(Float64, len, 1)
  t = 0
  for i = 1:length(x)
    x[i] = A*exp(-gamma/2*t)*cos(omega*t+acos(x_0/A))
    y[i] = B*exp(-gamma/2*t)*cos(omega*t+acos(y_0/B))
    z[i] = C*exp(-gamma/2*t)*cos(omega*t+acos(z_0/C))
    t += deltaT
  end
  return x,y,z
end




end # module

#juno und revise nachschauen, juliabox
