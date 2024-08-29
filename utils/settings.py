import configparser
import os


'''
A function that load api_id, api_hash and phone number from config.ini

:return tuple
    tuple containing api_id as an int, api_hash as a string and phone number as a string
'''


def loadConfig():
    config = configparser.ConfigParser()
    if not os.path.exists('appfiles/config.ini'):
        return
    config.read('appfiles/config.ini')
    api_id = int(config.get('API', 'ID'))
    api_hash = config.get('API', 'HASH')
    phone_number = config.get('API', 'PHONE')
    extended_report = config.get('REPORT', 'EXTENDED')
    return api_id, api_hash, phone_number, extended_report

'''
A function that save api_id, api_hash and phone number in config.ini

:param api_id: int
    Telegram's api id
:param api_id: str
    Telegram's api hash
:param api_id: str
    Telegram's api associated phone number
'''


def saveConfig(api_id, api_hash, phone_number, extended_report):
    if api_id is None or len(api_hash) == 0 or len(phone_number) == 0:
        return
    config = configparser.ConfigParser()
    config['API'] = {'ID': str(api_id),
                     'HASH': str(api_hash),
                     'PHONE': str(phone_number)}
    config['REPORT'] = {'EXTENDED': extended_report}
    with open('appfiles/config.ini', 'w') as configfile:
        config.write(configfile)
    return loadConfig()

