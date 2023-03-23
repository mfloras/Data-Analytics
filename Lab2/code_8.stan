data{
    int<lower=1> N; // Number of ys
}

parameters{
    real y[N];  // Probabilistic variables y
    real theta; // Probabilistic variables theta
}

model {
    // Add conditional probability density for the ys
    // gven theta to the joint log probability density
    // using the vectorized log probability density
    target += normal_lpdf(y | theta, 1);

    // Add marginal probability density for theta
    // to the joint log probability density
    target += normal_lpdf(y | 0, 1);
}