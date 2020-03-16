(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1028) "\01\00\00\00\01")
 (data (i32.const 1040) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 1072) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00e\00m\00p\00t\00y\00.\00t\00s")
 (data (i32.const 1104) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/string/String#get:length (; 2 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 3 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1056
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $3
    i64.load
    local.get $0
    i64.load
    i64.eq
    if
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $1
   local.tee $2
   i32.const 1
   i32.sub
   local.set $1
   local.get $2
   if
    local.get $3
    i32.load16_u
    local.tee $2
    local.get $0
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $2
     local.get $4
     i32.sub
     return
    end
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String#_eq (; 4 ;) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1056
  call $~lib/string/String#get:length
  local.tee $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~start (; 5 ;)
  i32.const 1040
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1056
  call $~lib/string/String#_eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 2
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1120
  call $~lib/string/String#_eq
  if
   i32.const 0
   i32.const 1088
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1040
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1040
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
 )
)
