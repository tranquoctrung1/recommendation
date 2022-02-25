using Recommendation
using SparseArrays


n_user, n_item = 5, 10

events = [Event(1, 2, 1), Event(3, 2, 1), Event(2, 6, 4)]

data = DataAccessor(events, n_user, n_item)

recommender = MostPopular(data)

build!(recommender)

# using matrix factorization 
recommender = MF(data, 2)

build!(recommender, learning_rate = 15e-4, max_iter = 100)

# top 2 recommendation for a user 4 
recommend(recommender, 4, 2, collect(1:n_item))