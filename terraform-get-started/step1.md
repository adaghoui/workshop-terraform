# 🚀 Step 1 – Run Your First Container

Check if Docker is working by running the classic hello-world image:

```bash
docker run hello-world
```

Now, let’s run an **Nginx web server**:

```bash
docker run -d -p 8080:80 nginx
```

Test it:

```bash
curl localhost:8080
```

👉 You should see the default Nginx welcome page.
