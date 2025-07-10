import subprocess



def StartService():
    bat_file_path = 'BatFiles/StartMySQLService.bat'
    subprocess.call(bat_file_path, shell=True)

def StopService():
    bat_file_path = r'BatFiles/StopMySQLService.bat'
    subprocess.call(bat_file_path, shell=True)

if __name__ == '__main__':
    print('name is main')
    print('testing start service')
    StartService()
    print('testing stop service')
    StopService()
    print('finished')
    input()