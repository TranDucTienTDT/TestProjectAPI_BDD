import allure_behave
import requests, json, allure
from requests.structures import CaseInsensitiveDict
from behave import *
from features.configuration import config
from features.models.user_model import UserModel


@given(u'Table of Users')
def step_impl(context):
    model = getattr(context, "model", None)
    if not model:
        context.model = UserModel()
    for row in context.table:
        context.model.add_user(row["firstName"],
                               row["lastName"],
                               row["email"],
                               row["registered"],
                               row["confirmed"],
                               row["active"],
                               row["access"])


@Then(u'First name should be: "{firstName}"')
def step_impl(context, firstName):
    assert context.model.firstName == firstName


@Then(u'The user info should be matched.')
def step_impl(context):

    assert context.model.firstName == context.response.json()[0]["firstName"]
    assert context.model.lastName == context.response.json()[0]["lastName"]
    assert context.model.registered == context.response.json()[0]["registered"]
    assert context.model.confirmed == context.response.json()[0]["confirmed"]
    assert context.model.active == context.response.json()[0]["active"]
    assert context.model.access == context.response.json()[0]["access"]