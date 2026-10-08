@echo off
setlocal
title OfferTrack Local

where node >nul 2>nul
if errorlevel 1 (
  echo [OfferTrack] Node.js is not installed.
  echo Install Node.js 22.13 or newer from https://nodejs.org/ and try again.
  pause
  exit /b 1
)

if not exist node_modules (
  echo [OfferTrack] Installing dependencies for the first launch...
  call npm install
  if errorlevel 1 (
    echo [OfferTrack] Installation failed. Check the messages above.
    pause
    exit /b 1
  )
)

echo [OfferTrack] Starting locally. Open the address shown below in your browser.
call npm run dev
endlocal

