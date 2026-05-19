# Stage 1: Install dependencies
FROM node:22-alpine AS deps
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

# Stage 2: Build the app
FROM node:22-alpine AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN npm run build

# Stage 3: Runner (The final image)
FROM node:22-alpine AS runner
WORKDIR /app
ENV NODE_ENV=production

ARG GIT_COMMIT
ENV GIT_COMMIT=$GIT_COMMIT
RUN test -n "$GIT_COMMIT" || \
    (echo "ERROR: GIT_COMMIT build arg is required. Build with: docker build --build-arg GIT_COMMIT=\$(git rev-parse HEAD) ." >&2; exit 1)

# Copy built application and package files from builder
COPY --from=builder /app/build ./build
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/package-lock.json ./package-lock.json

# Install only production dependencies
RUN npm ci --omit=dev

EXPOSE 3000
ENV PORT 3000
CMD ["node", "build/index.js"]