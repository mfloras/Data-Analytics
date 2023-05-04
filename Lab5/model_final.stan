data{
    int N;
    real n[N];
    int y[N];
}

parameters{
    vector[N] alpha;
    real theta;
}

model{
    alpha ~ normal(3.1, 0.6);
    theta ~ normal(0.2, 0.1); 

    for (i in 1:N){
        y[i] ~ poisson_log(alpha[i] + theta * n[i]);
    }
}
generated quantities {
    real y_pred[N];

    for (i in 1:N){
        y_pred[i] = poisson_log_rng(alpha[i] + theta *n[i]);
    }
}