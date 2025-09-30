# 🧑‍💻 Demo App – Developing with Docker

This demo shows a simple **User Profile App** built with:

- **Frontend:** `index.html` + JavaScript + CSS
- **Backend:** Node.js + Express
- **Database:** MongoDB
- **Database UI:** Mongo Express

Everything runs in **Docker containers**.

---

## 🚀 Run with Docker

### Step 1: Create a Docker network (optional)

```bash
docker network create mongo-network
```

### Step 2: Start Mongo DB

```bash
docker run -d -p 27017:27017 \
  -e MONGO_INITDB_ROOT_USERNAME=admin \
  -e MONGO_INITDB_ROOT_PASSWORD=password \
  --name mongodb \
  --net mongo-network \
  mongo
```

### Step 3: Start Mongo Express

```bash
docker run -d -p 8081:8081 \
  -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
  -e ME_CONFIG_MONGODB_ADMINPASSWORD=password \
  -e ME_CONFIG_MONGODB_SERVER=mongodb \
  -e ME_CONFIG_MONGODB_URL=mongodb://mongodb:27017 \
  --name mongo-express \
  --net mongo-network \
  mongo-express
```

### Step 4: Open Mongo Express

Go to: http://localhost:8081

### Step 5: Create a database and collection

- Database name: user-account
- Collection name: users

### Step 6: Create a database and collection

- Database name: user-account
- Collection name: users

### Step 7: Run Node.js app locally

```bash
cd app
npm install
node server.js
```

Go to: http://localhost:3000

## 🚀 Build Docker Image

```bash
docker build -t my-app:1.0 .
```

## 🚀 Run with Docker Compose

```bash
docker-compose -f docker-compose.yaml up
```
