
n = 10^5
n_exp = 10^4
maxw = rep(0, n_exp)

for (i in 1:n_exp) {
  set.seed(777 + i)
  delta = rnorm(n = n, mean = 0, sd = sqrt(10/n))
  w = cumsum(delta)
  maxw[i] = max(w)
}

mean(maxw > 7)
