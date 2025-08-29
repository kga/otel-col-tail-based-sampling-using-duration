import http from 'k6/http';
import { randomIntBetween } from 'https://jslib.k6.io/k6-utils/1.2.0/index.js';

export const options = {
  vus: 10,
  duration: '30s',
};

export default function() {
  const n = randomIntBetween(1, 10)
  http.get(`http://localhost:4567/${n}`);
}
