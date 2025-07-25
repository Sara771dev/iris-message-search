# IRIS -Message-Search

Query messages based on key information
---
By providing key information from the search table to query messages, multiple service retrieval conditions and multiple service queries can be achieved.

---

## How to use it

You need to use the task class `Search.Task.Search` to create a scheduled task and configure some information. Of course, it will also be created during the build process. If it fails, you will need to manually create and execute the next task, and after execution, you can query the messages.

---

#### We can search by adding conditions to the page, which can retrieve all services based on patient information, rather than being limited to a single service, provided that the corresponding searchtable is maintained
(`tip:` Perform a scheduled task before the visit to obtain the search criteria of the drop-down list)


![[0.png]]


![[1.png]]


---
### Below is the page address for message retrieval
` http://127.0.0.1:52773/csp/user/Search.Page.SearchApplication.cls

- `tip:` If you cannot access the Page, you may need to adjust  and Web application and change the server file of `/csp/user` to `always and cache`.
---
### Prerequisites
Make sure you have git and Docker desktop installed.
### Installation
#### 1.Clone/git pull the repo into any local directory
```
git clone https://github.com/Sara771dev/iris-message-search.git
```  
#### Open the terminal in this directory and run

```
docker-compose build
```
#### Run the IRIS container 

```
docker-compose up -d
```