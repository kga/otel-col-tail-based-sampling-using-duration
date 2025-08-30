# トレースのサンプリングを観察する

## OpenTelemetry Collector の立ち上げ

```bash
docker run \
  -p 4317:4317 \
  -p 4318:4318 \
  -v $(pwd)/otel-col.yaml:/etc/otelcol-contrib/config.yaml \
  otel/opentelemetry-collector-contrib:latest
```

## トレースの生成

### Ruby アプリケーションからトレースを送信する場合

```bash
bundle install
ruby app.rb
```

```bash
brew install k6
k6 run script.js
```

### telemetrygen を使ってトレースを送信する場合

```bash
go install github.com/open-telemetry/opentelemetry-collector-contrib/cmd/telemetrygen@latest
./gentraces.sh
```
