#!/bin/bash

telemetrygen traces --duration 10s --span-duration 3s --otlp-insecure &>/dev/null &
telemetrygen traces --duration 10s --span-duration 5s --otlp-insecure &>/dev/null &
telemetrygen traces --duration 10s --span-duration 10s --otlp-insecure &>/dev/null &
