
###　修正前

`<% if schedule.exists?(:date => Date.today .. Float::INFINITY) %>`

exists?はActiveRecord::Baseクラスのメソッドで、Railsでデータベースからデータを検索する際にう。モデルクラス（例：GirlやSchedule）あるいはActiveRecord::Relationオブジェクトに対して使います。
'exists?'は、exists?メソッドがScheduleインスタンス（個々のScheduleレコード）に対して呼び出されたためにエラーが発生した。

### 修正後
`<% if (Date.today .. Float::INFINITY).cover?(schedule.date) %>`

期待する日付範囲に該当するかどうかを直接チェックする方が適切。
ここでは (Date.today .. Float::INFINITY).cover?(schedule.date)という形で、schedule.dateが期待する日付範囲に含まれるかをチェックする。