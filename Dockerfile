

ARG NODE_VERSION=20.17.0

FROM node:${NODE_VERSION}-alpine



WORKDIR /app
COPY package*.json ./


RUN npm install --legacy-peer-deps



# Copy the rest of the source files into the image.
COPY . .

# Expose the port that the application listens on.
EXPOSE 3000

# Run the application.
CMD npm run dev
