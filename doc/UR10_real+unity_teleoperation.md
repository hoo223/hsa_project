## unity container
unity 실행 -> UR10 Project -> UR10 Scene

## host PC
haptic

## ur10 container
~~~
ur10_tcp (티치펜던트 Play 버튼)
interface_r
~~~

## core container
~~~
teleop_real_with_unity
~~~

## core container
~~~
ut
container
uhi
interface_vns
teleop_unity
~~~

## 조이스틱 없을 때
rqt -> Plugins -> Topics -> Message Publisher
/joy_command, /unity/joy_command 추가
data -> [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 7.0] (teleop start)
data -> [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 7.0] (reset pose)
