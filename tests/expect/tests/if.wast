(module
  (type $t0 (func))
  (type $t1 (func (param i32)))
  (type $t2 (func (param i32 i32)))
  (type $t3 (func (param i32 i32 i32)))
  (type $t4 (func (result i32)))
  (type $t5 (func (param i32) (result i32)))
  (type $t6 (func (param i32 i32) (result i32)))
  (import "e" "get_seg" (func $e.get_seg (type $t5)))
  (import "e" "instr32_83_7_reg" (func $e.instr32_83_7_reg (type $t2)))
  (import "e" "test_nle" (func $e.test_nle (type $t4)))
  (import "e" "instr32_41" (func $e.instr32_41 (type $t0)))
  (import "e" "instr32_43" (func $e.instr32_43 (type $t0)))
  (import "e" "instr_F4" (func $e.instr_F4 (type $t0)))
  (import "e" "m" (memory $e.m 256))
  (func $f (export "f") (type $t0)
    (local $l0 i32) (local $l1 i32)
    (set_local $l0
      (i32.const 0))
    (set_local $l1
      (i32.const 10000))
    (loop $L0
      (set_local $l1
        (i32.add
          (get_local $l1)
          (i32.const -1)))
      (if $I1
        (i32.eqz
          (get_local $l1))
        (then
          (return)))
      (block $B2
        (block $B3
          (block $B4
            (block $B5
              (br_table $B5 $B4 $B3 $B2
                (get_local $l0)))
            (i32.store
              (i32.const 560)
              (i32.add
                (i32.load
                  (i32.const 556))
                (i32.const 3)))
            (i32.store
              (i32.const 556)
              (i32.add
                (i32.load
                  (i32.const 556))
                (i32.const 5)))
            (call $e.instr32_83_7_reg
              (i32.const 0)
              (i32.const 5))
            (i32.store
              (i32.const 664)
              (i32.add
                (i32.load
                  (i32.const 664))
                (i32.const 2)))
            (if $I6
              (call $e.test_nle)
              (then
                (i32.store
                  (i32.const 556)
                  (i32.add
                    (i32.load
                      (i32.const 556))
                    (i32.const 1)))
                (set_local $l0
                  (i32.const 2)))
              (else
                (set_local $l0
                  (i32.const 1))))
            (br $L0))
          (call $e.instr32_41)
          (i32.store
            (i32.const 556)
            (i32.add
              (i32.load
                (i32.const 556))
              (i32.const 1)))
          (i32.store
            (i32.const 664)
            (i32.add
              (i32.load
                (i32.const 664))
              (i32.const 1)))
          (set_local $l0
            (i32.const 2))
          (br $L0))
        (i32.store
          (i32.const 560)
          (i32.add
            (i32.load
              (i32.const 556))
            (i32.const 1)))
        (i32.store
          (i32.const 556)
          (i32.add
            (i32.load
              (i32.const 556))
            (i32.const 2)))
        (call $e.instr32_43)
        (call $e.instr_F4)
        (i32.store
          (i32.const 664)
          (i32.add
            (i32.load
              (i32.const 664))
            (i32.const 2)))
        (return))
      (unreachable))))
