; Test annotation parse error.

; Setup:
; RUN: echo 'invalid' > %t.json

; RUN: firtool %s --parse-only --annotation-file %t.json --verify-diagnostics

FIRRTL version 4.0.0
; expected-error @below {{Failed to parse JSON}}
; expected-note @below {{}}
circuit Test:
  public module Test:
    output o : UInt<1>
    connect o, UInt<1>(0)
