# OpenTelemetry Collector Tail-based sampling using duration

## setup

- bundle install
- install k6

## run

```bash
ruby app.rb
```

```bash
docker run \
  -p 4318:4318 \
  -v $(pwd)/otel-col.yaml:/etc/otelcol-contrib/config.yaml \
  otel/opentelemetry-collector-contrib:latest
```

```bash
k6 run script.js
```
