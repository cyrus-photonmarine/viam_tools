# Viam Tools
Personal scripts for accessing vessel data using the viam API and python SDK.

## Setup
**Requires Linux**

## API Keys
Obtain an `api_key` and `api_key_id` from `viam.com` using your valid credentials for the given vessel. 
These need to be set to environment variables in your system. 

Don't ever ever ever put your api key on github.  Keep it secret. Keep it Safe.  

adding these lines to your `~/.bashrc` file will set this to your environment at startup. 
```bash
export VIAM_API_KEY='<api_key>'
export VIAM_API_KEY_ID='<api_key_id>'
```

To initialize the python environment, run the following commands.

```bash
./setup_venv.sh

# to enter the python environment.
source .venv/bin/activate

< do your thing > 

# to exit the python enviroment
deactivate
```





