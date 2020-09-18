#!/usr/bin/python3
"""This module holds a function to that queries
    the Reddit API and returns the number of subscribers
    for a given subreddit
    """
import requests


def number_of_subscribers(subreddit):
    """Query for a reddit subscribers

    Args:
        subreddit ([str]): User to query for

    Returns:
        [int]: Number of subscribers
    """
    headers = {'User-agent': 'nicolasquinchia'}
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    get_req = requests.get(url, headers=headers, allow_redirects=False)
    if get_req.status_code == 200:
        subs_query = get_req.json().get('data').get('subscribers')
        return subs_query
    else:
        return 0
