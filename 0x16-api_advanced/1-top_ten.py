#!/usr/bin/python3
"""Module that holds a function that queries the
    Reddit API and prints the titles of the first 10
    hot posts listed for a given subreddit
    """
import requests


def top_ten(subreddit):
    """Prints the titles of the first 10
    hot posts listed for a given subreddit

    Args:
        subreddit ([str]): User to query for
    """
    headers = {'User-agent': 'nicolasquinchia'}
    url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)
    get_req = requests.get(
        url,
        params={"limit": 10, "g": "GLOBAL"},
        headers=headers,
        allow_redirects=False)
    get_data = get_req.json().get('data').get('children')
    if get_req.status_code == 200:
        for posts in get_data:
            print(posts.get('data').get('tittle'))
    else:
        print("None")
