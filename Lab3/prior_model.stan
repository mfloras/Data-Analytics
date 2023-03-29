generated quantities {
    int N=50;
    int<lower=0,upper=N> y;
    real<lower=0,upper=1> p = beta_rng(8, 40);

    y = binomial_rng(N, p);
}