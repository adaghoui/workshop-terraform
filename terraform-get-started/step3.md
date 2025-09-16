# 📝 Step 3 – Create a Dockerfile

Create a file named `Dockerfile`:

```dockerfile
FROM python:3.10-slim
COPY app.py /app/
WORKDIR /app
CMD ["python", "app.py"]
```

Now create a simple Python app:

```bash
echo 'print("Hello from my Docker container!")' > app.py
```
