# Deploy Gitlab Community server using docker-compose

### 1. Clone this repository

```bash
git clone https://github.com/Mayamee/gitlab-ce-docker.git
```

### 2. Create config.bash from config.bash.example

```bash
cp config.bash.example config.bash
```

### 3. Run docker-compose

```bash
make up
```

Data of Gitlab server will be stored in `./gitlab-data` directory.
