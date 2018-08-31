SELECT neighbourhood,
sum(number_of_reviews) number_of_reviews
from listings
group by neighbourhood
order by number_of_reviews desc
limit 5