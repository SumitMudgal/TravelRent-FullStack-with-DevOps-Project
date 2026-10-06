
# DATE:- 06/10/2026

# Uses the same Node.js version my project uses based on my laptops's version of "node" package.
FROM node:20.14.0  

# Sets /app as the application's working directory
WORKDIR /app

# Copies all package files first
COPY package*.json ./

# Installs the exact dependencies from "package-lock.json" file
RUN npm ci

# Copies the TravelRent source code
COPY . .

# Documents that the app listens on port 8080
EXPOSE 8080

# Starts TravelRent when the container runs, means we are telling that always Run this command i.e. "npm start" to start the "TravelRent" Application when the Container runs.
CMD ["npm", "start"]
