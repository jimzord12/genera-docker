// ✨ Frontend Game - Version
import axios from 'axios';

const PORT = 3500; // Local port
// const PORT = 29352;
const Heroku_HOST = 'https://genera-game-backend-v2.herokuapp.com/';
const dockerTestHost = 'http://localhost:3500';

export default axios.create({
  baseURL: dockerTestHost,
  // baseURL: Heroku_HOST,
  // baseURL: `http://localhost:${PORT}`,
});

export const axiosPrivate = axios.create({
  baseURL: dockerTestHost,
  // baseURL: Heroku_HOST,
  // baseURL: `http://localhost:${PORT}`,
  headers: { 'Content-Type': 'application/json' },
  withCredentials: true,
});
