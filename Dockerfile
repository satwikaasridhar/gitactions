# ---------- Stage 1: Build ----------
FROM node:20-alpine AS build

WORKDIR /app

# Only copy package files first to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy the rest of the code
COPY . .

# ---------- Stage 2: Run ----------
FROM node:20-alpine

WORKDIR /app

# Copy only the built app + node_modules from the build stage
COPY --from=build /app /app

# Expose port (adjust to your app’s port)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

