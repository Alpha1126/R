data("mtcars")
plot(mtcars$disp,mtcars$cyl, main="Disp VS Cyl")
abline(lm(cyl~disp, data = mtcars) )

data("state.x77")
plot(state.x77$population,state.x77$area)

