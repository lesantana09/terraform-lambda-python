import requests

def lambda_handler(event, context):
    result = requests.get("https://api.thecatapi.com/v1/images/search")
    return {
        'statusCode' : 200,
        'body': result.json()
    }