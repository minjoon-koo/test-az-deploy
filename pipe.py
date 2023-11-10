import os
with open('vault_secret_name.txt', 'r') as file:
    for line in file:
        text = f'echo ${line.strip()}'
        #os.system(f"echo \$$({line.strip()})")
        
        with open('create_env.sh', 'a') as file:
            file.write(f"\n{text}")
