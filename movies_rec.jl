using Recommendation

da = load_movielens_100k()

recommender = MostPopular(da)

build!(recommender)

recommender = MF(da, 2)

build!(recommender, learning_rate = 15e-4, max_iter = 100)

# top 20 recommendation for a use 1
recommend(recommender, 1, 20, collect(1:100))