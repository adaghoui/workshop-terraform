# 🔍 Step 2 – Explore Containers

List running containers:

```bash
docker ps
```

Stop and restart your Nginx container:

```bash
docker stop <id>
docker start <id>
```

Open a shell inside the container:

```bash
docker exec -it <id> bash
```

👉 Remember: **Images are templates**, while **containers are running instances**.
