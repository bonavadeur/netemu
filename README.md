# netemu - ネテム

`netemu` is a compact script to emulate latency between VMs using the `Linux tc`

## 1. How to use

### 1.1 Context

I have 3 VMs and need to emulate latency between VM1 to VM3 and VM2 to VM3

```bash
  VM1                      VM2
(vnet0)                  (vnet1)
   |                        |
   |                        |
   \_____(Host Machine)_____/
               |
               |
            (vnet2)
              VM3
```

The following scripts are run on Host Machine

### 1.2 Constant delay

Delay between
+ VM1-VM3 = 50ms  
+ VM2-VM3 = 50ms  
+ VM1-VM2 = 0ms  

```bash
# ./delayfix.sh <delay>
./delayfix.sh 50
```

### 1.3. Variable delay

Delay between
+ VM1-VM3 = 50 ± 20 ms 
+ VM2-VM3 = 50 ± 20 ms
+ VM1-VM2 = 0ms  

Bandwidth between
+ VM1-VM3 = 100Mbps
+ VM2-VM3 = 100Mbps
+ VM1-VM2 = unlimited

```bash
# ./delaynor.sh <bandwidth> <delay> <jitter>
./delayfix.sh 100 50 20
```

### 1.4. Data Trace based Delay

Delay between VMs
+ VM1-VM3 = 50 ± 20 ms 
+ VM2-VM3 = 50 ± 20 ms
+ VM1-VM2 = 0ms  

Bandwidth between VMs are taken from .csv file (source: [4G Data Trace](https://www.kaggle.com/datasets/aeryss/lte-dataset))

```bash
# python3 netem.py 10 <delay> <jitter>
./delayfix.sh 10 50 20
```

## 2. Contributeur

Đào Hiệp - Bonavadeur - ボナちゃん  
The Future Internet Laboratory, Room E711 C7 Building, Hanoi University of Science and Technology, Vietnam.  
未来のインターネット研究室, C7 の E ７１１、ハノイ百科大学、ベトナム。  
