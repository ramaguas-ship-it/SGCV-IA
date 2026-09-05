FROM node:20-alpine

WORKDIR /app

# Dependencias del backend
COPY backend/package.json backend/package-lock.json* ./backend/
RUN cd backend && npm install --omit=dev --no-audit --no-fund

# Backend + frontend estático (el server sirve el HTML del prototipo)
COPY backend ./backend
COPY SGCV-IA_Prototipo_Funcional.html ./SGCV-IA_Prototipo_Funcional.html

ENV PORT=8080
ENV SGCV_DB_PATH=/app/data/sgcv.db
VOLUME ["/app/data"]

EXPOSE 8080
CMD ["node", "backend/server.js"]
