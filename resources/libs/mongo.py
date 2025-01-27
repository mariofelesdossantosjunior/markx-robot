from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://qax:xperience@cluster0.b0dte.mongodb.net/markX?retryWrites=true&w=majority&appName=Cluster0')

db = client['markX']

@keyword('Remove task from database')
def  remove_task_by_name(name):
    collection = db['tasks']
    collection.delete_many({'text': name})
    print('Task removed')


