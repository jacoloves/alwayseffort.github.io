# TRPLを英語で読む メモ1

RustパッケージはC言語に依存してるからCコンパイラのインストールが必要。   
簡単なRustのソースについての説明。   
```rust
fn main() {
    println!("Hello, world");
}
```

main関数が大事で、*println!*はマクロ。

```rust
rsutc hello.rs
````
上記でコンパイルできる。   
CやC++のGCCに似てる。   

## cargoについて
*cargo check*をプログラムを書いてるときは頻繁に使うとよい。   
cargo checkしてある程度プログラムが形になったら、cargo buildする感じがいい。   

```
cargo build --release
```

上記を実行すると*target/release*にコンパイルされる。   
