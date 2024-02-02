yaml-yq-cheat-sheet
==

## Installation

### Mac

```sh
brew install yq
```

### Linux

```sh
snap install yq
```

* * *

## flat-keys.yaml

```yaml
alpha: 100
beta: 200
gamma: 300
delta: 400
epsilon: 500
```

### Get first key

```sh
cat flat-keys.yaml | yq 'keys | .[0]'
alpha
```

```sh
cat flat-keys.yaml | yq '(keys)[0]'
alpha
```

### Get first value

```sh
yq '.[(keys)[0]]' flat-keys.yaml
100
```

### Get last key

```sh
cat flat-keys.yaml | yq 'keys | .[-1]'
epsilon
```

### Get last value

```sh
yq '.[(keys)[-1]]' flat-keys.yaml
500
```

### All values

```sh
cat flat-keys.yaml | yq '.[]'                 
100
200
300
400
500
```

```sh
cat flat-keys.yaml | yq '.[] as $foo | $foo'       
100
200
300
400
500
```

### To Entries

```sh
yq 'to_entries' flat-keys.yaml
- key: alpha
  value: 100
- key: beta
  value: 200
- key: gamma
  value: 300
- key: delta
  value: 400
- key: epsilon
  value: 500
```

* * *

## References

* https://mikefarah.gitbook.io/yq/
* https://github.com/mikefarah/yq
* https://mikefarah.gitbook.io/yq/operators/keys


