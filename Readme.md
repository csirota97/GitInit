GitInit
============

A basic bash script to quickly go through the steps of setting up a local repository and connecting it to a new remote repository.

To run the script
```bash
 bash ./run.sh <localRepositoryName> <remoteRepositoryName>
```

| Parameter                 | Required       | Description   |	
| :------------------------ |:-------------:| :-------------|
| localRepositoryName	      |	Yes           | Local repository name
| remoteRepositoryName      | No            | Remote repository name - if not included, localRepositoryName will be used for local and remote
