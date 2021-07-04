import allure_behave
import requests, json, allure
from requests.structures import CaseInsensitiveDict
from behave import *
from features.configuration import config


@allure.step('Login to TestProject')
@given(u'Login to TestProject')
def step_impl(context):
    """ Do something here to setup request"""
    context.url = f"{config.TESTPROJECT_END_POINT}"
    context.headers = CaseInsensitiveDict()
    context.headers["Authorization"] = config.TESTPROJECT_AUTHORIZATION_KEY
    context.headers["Content-Type"] = "application/json"


@given(u'The uri is: "{uri}"')
def step_impl(context, uri):
    """ Set uri"""
    context.url = context.url + uri


@given(u'The query is: "{query}"')
def step_impl(context, query):
    """ Set query (optional)"""
    context.url = context.url + query


@when(u'The "{method}" request is sent.')
def step_impl(context, method):
    if method.upper() == "GET":
        context.response = requests.get(context.url, headers=context.headers)
    elif method.upper() == "POST":
        context.response = requests.post(context.url, headers=context.headers, data=context.text)
    elif method.upper() == "PUT":
        context.response = requests.put(context.url, headers=context.headers, data=context.text)
    elif method.upper() == "PATCH":
        context.response = requests.patch(context.url, headers=context.headers, data=context.text)
    elif method.upper() == "DELETE":
        context.response = requests.delete(context.url)
    elif method.upper() == "HEAD":
        context.response = requests.head(context.url)
    else:
        raise Exception(f"This {method} is not supported.")


@when(u'The GET request with uri "{uri}" is sent.')
def step_impl(context, uri):
    """ Sent a GET request with specific URI"""
    context.url = context.url + uri
    context.response = requests.get(context.url, headers=context.headers)


@when(u'The POST request with uri "{uri}" and payload below is sent.')
def step_impl(context, uri):
    """ Sent a POST request with specific URI and payload"""
    context.url = context.url + uri
    context.response = requests.get(context.url, headers=context.headers, data=context.text)


@then(u'The response status should be: {status_code}')
def step_impl(context, status_code):
    status_codes = ["200", "201", "400", "401", "403", "404", "405", "500", "502", "504"]
    """ Nếu ở trong list các status code thì mình check tiếp"""
    if status_code in status_codes:
        assert context.response.status_code == int(status_code)
    else:
        raise Exception(
            f"The status code {status_code} (type: {type(status_code)}) is not supported. It should be {context.response.status_code} (type: {type(context.response.status_code)}).")
