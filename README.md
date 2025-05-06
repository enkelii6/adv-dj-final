# Multi-Service Web Application

This project is a modular web application composed of three independently containerized services:

* **API** – A backend RESTful API that provides core application logic and data services.
* **Bot** – A background worker or automation service that interacts with external systems or performs scheduled tasks.
* **Frontend** – A user-facing web application (e.g., built with React, Vue, or similar) that consumes the API.

Each service is managed via its own Docker Compose file to allow independent development and deployment. However, for convenience, a `Makefile` is provided to handle common operations across all services with simple commands.

---

## 🏁 How to Start the Project

1. **Clone the repository**

   ```bash
   git clone <your-repo-url>
   cd <your-project-directory>
   ```

2. **Build all services**

   This will build Docker images for `api`, `bot`, and `frontend`.

   ```bash
   make build-all
   ```

3. **Start all services**

   This will start all services in detached mode.

   ```bash
   make start-all
   ```

4. **Stop all services**

   You can bring everything down with:

   ```bash
   make stop-all
   ```

---

## 💠 Development Tips

* You can build or start/stop individual services using commands like:

  * `make build-api`
  * `make start-frontend`
  * `make stop-bot`
* If you change source code, rebuild the relevant service using `make build-<service>`.

---

## 📋 Requirements

* Docker
* Docker Compose
* GNU Make

---

## 🔒 Environment Configuration

Each service may rely on its own `.env` file or environment variables. Make sure those are properly configured before running the services.

---

## 📄 License

Licensed under the [MIT License](LICENSE).

---

## 🤝 Contributions

Feel free to submit issues or pull requests. Feedback and contributions are welcome!
