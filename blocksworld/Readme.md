## q01
条件をそのまま書き下すだけである。

## q02
`every`関数を用いて、
q01で実装した関数を２つのリストの各要素に適用するだけである。

## q03
パターンに合致するかどうかを判定する関数はq02で定義済みである。
blockdataはリストのリストなので、１つずつ取り出して、`match-triple`を適用する必要がある。

## q06
listのlazy-evalを`'(? supports blk)`としてしまうと、blkが評価されず
埋め込まれない為、`list`関数を用いること。

## q07
`dsec2`の返り値は、
((shape brick) (color red) (size small))のようなリスト群となっているため、
`reduce append`を用いてリストをflatにする。

## q08
`some`関数はリスト各要素に少なくとも一つTがあればTを返す。
