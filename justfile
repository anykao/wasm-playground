default:
    cargo build --target wasm32-unknown-unknown 
bindgen:
    wasm-bindgen --no-modules target/wasm32-unknown-unknown/debug/no_modules.wasm --out-dir .
serve:
    devd -olp 1984 .