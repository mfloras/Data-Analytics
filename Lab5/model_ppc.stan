generated quantities{
    real alpha = normal_rng(3.1, 0.1);
    real theta = normal_rng(0.0001, 0.00001);
    real n = normal_rng(5700, 1121);
    real lambda =  exp(alpha + theta * n);
    int y = poisson_rng(lambda);
}