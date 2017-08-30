.class public Lorg/androvoip/audio/ULAW;
.super Ljava/lang/Object;
.source "ULAW.java"


# static fields
.field private static final BIAS:S = 0x84s

.field private static final CLIP:I = 0x7f7b

.field private static final ZEROTRAP:Z = true

.field private static final exp_lut1:[I

.field private static final u2l:[S


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x5

    const/4 v4, 0x6

    const/4 v3, 0x7

    .line 31
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v1, v0, v7

    const/4 v1, 0x2

    aput v1, v0, v6

    const/4 v1, 0x2

    aput v1, v0, v5

    const/4 v1, 0x2

    aput v1, v0, v4

    const/4 v1, 0x2

    aput v1, v0, v3

    const/16 v1, 0x8

    aput v7, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    aput v7, v0, v1

    const/16 v1, 0xb

    aput v7, v0, v1

    const/16 v1, 0xc

    .line 32
    aput v7, v0, v1

    const/16 v1, 0xd

    aput v7, v0, v1

    const/16 v1, 0xe

    aput v7, v0, v1

    const/16 v1, 0xf

    aput v7, v0, v1

    const/16 v1, 0x10

    aput v6, v0, v1

    const/16 v1, 0x11

    aput v6, v0, v1

    const/16 v1, 0x12

    aput v6, v0, v1

    const/16 v1, 0x13

    aput v6, v0, v1

    const/16 v1, 0x14

    aput v6, v0, v1

    const/16 v1, 0x15

    aput v6, v0, v1

    const/16 v1, 0x16

    aput v6, v0, v1

    const/16 v1, 0x17

    aput v6, v0, v1

    const/16 v1, 0x18

    aput v6, v0, v1

    const/16 v1, 0x19

    aput v6, v0, v1

    const/16 v1, 0x1a

    aput v6, v0, v1

    const/16 v1, 0x1b

    aput v6, v0, v1

    const/16 v1, 0x1c

    aput v6, v0, v1

    const/16 v1, 0x1d

    aput v6, v0, v1

    const/16 v1, 0x1e

    aput v6, v0, v1

    const/16 v1, 0x1f

    aput v6, v0, v1

    const/16 v1, 0x20

    aput v5, v0, v1

    const/16 v1, 0x21

    aput v5, v0, v1

    const/16 v1, 0x22

    .line 33
    aput v5, v0, v1

    const/16 v1, 0x23

    aput v5, v0, v1

    const/16 v1, 0x24

    aput v5, v0, v1

    const/16 v1, 0x25

    aput v5, v0, v1

    const/16 v1, 0x26

    aput v5, v0, v1

    const/16 v1, 0x27

    aput v5, v0, v1

    const/16 v1, 0x28

    aput v5, v0, v1

    const/16 v1, 0x29

    aput v5, v0, v1

    const/16 v1, 0x2a

    aput v5, v0, v1

    const/16 v1, 0x2b

    aput v5, v0, v1

    const/16 v1, 0x2c

    aput v5, v0, v1

    const/16 v1, 0x2d

    aput v5, v0, v1

    const/16 v1, 0x2e

    aput v5, v0, v1

    const/16 v1, 0x2f

    aput v5, v0, v1

    const/16 v1, 0x30

    aput v5, v0, v1

    const/16 v1, 0x31

    aput v5, v0, v1

    const/16 v1, 0x32

    aput v5, v0, v1

    const/16 v1, 0x33

    aput v5, v0, v1

    const/16 v1, 0x34

    aput v5, v0, v1

    const/16 v1, 0x35

    aput v5, v0, v1

    const/16 v1, 0x36

    aput v5, v0, v1

    const/16 v1, 0x37

    aput v5, v0, v1

    const/16 v1, 0x38

    .line 34
    aput v5, v0, v1

    const/16 v1, 0x39

    aput v5, v0, v1

    const/16 v1, 0x3a

    aput v5, v0, v1

    const/16 v1, 0x3b

    aput v5, v0, v1

    const/16 v1, 0x3c

    aput v5, v0, v1

    const/16 v1, 0x3d

    aput v5, v0, v1

    const/16 v1, 0x3e

    aput v5, v0, v1

    const/16 v1, 0x3f

    aput v5, v0, v1

    const/16 v1, 0x40

    aput v4, v0, v1

    const/16 v1, 0x41

    aput v4, v0, v1

    const/16 v1, 0x42

    aput v4, v0, v1

    const/16 v1, 0x43

    aput v4, v0, v1

    const/16 v1, 0x44

    aput v4, v0, v1

    const/16 v1, 0x45

    aput v4, v0, v1

    const/16 v1, 0x46

    aput v4, v0, v1

    const/16 v1, 0x47

    aput v4, v0, v1

    const/16 v1, 0x48

    aput v4, v0, v1

    const/16 v1, 0x49

    aput v4, v0, v1

    const/16 v1, 0x4a

    aput v4, v0, v1

    const/16 v1, 0x4b

    aput v4, v0, v1

    const/16 v1, 0x4c

    aput v4, v0, v1

    const/16 v1, 0x4d

    aput v4, v0, v1

    const/16 v1, 0x4e

    .line 35
    aput v4, v0, v1

    const/16 v1, 0x4f

    aput v4, v0, v1

    const/16 v1, 0x50

    aput v4, v0, v1

    const/16 v1, 0x51

    aput v4, v0, v1

    const/16 v1, 0x52

    aput v4, v0, v1

    const/16 v1, 0x53

    aput v4, v0, v1

    const/16 v1, 0x54

    aput v4, v0, v1

    const/16 v1, 0x55

    aput v4, v0, v1

    const/16 v1, 0x56

    aput v4, v0, v1

    const/16 v1, 0x57

    aput v4, v0, v1

    const/16 v1, 0x58

    aput v4, v0, v1

    const/16 v1, 0x59

    aput v4, v0, v1

    const/16 v1, 0x5a

    aput v4, v0, v1

    const/16 v1, 0x5b

    aput v4, v0, v1

    const/16 v1, 0x5c

    aput v4, v0, v1

    const/16 v1, 0x5d

    aput v4, v0, v1

    const/16 v1, 0x5e

    aput v4, v0, v1

    const/16 v1, 0x5f

    aput v4, v0, v1

    const/16 v1, 0x60

    aput v4, v0, v1

    const/16 v1, 0x61

    aput v4, v0, v1

    const/16 v1, 0x62

    aput v4, v0, v1

    const/16 v1, 0x63

    aput v4, v0, v1

    const/16 v1, 0x64

    .line 36
    aput v4, v0, v1

    const/16 v1, 0x65

    aput v4, v0, v1

    const/16 v1, 0x66

    aput v4, v0, v1

    const/16 v1, 0x67

    aput v4, v0, v1

    const/16 v1, 0x68

    aput v4, v0, v1

    const/16 v1, 0x69

    aput v4, v0, v1

    const/16 v1, 0x6a

    aput v4, v0, v1

    const/16 v1, 0x6b

    aput v4, v0, v1

    const/16 v1, 0x6c

    aput v4, v0, v1

    const/16 v1, 0x6d

    aput v4, v0, v1

    const/16 v1, 0x6e

    aput v4, v0, v1

    const/16 v1, 0x6f

    aput v4, v0, v1

    const/16 v1, 0x70

    aput v4, v0, v1

    const/16 v1, 0x71

    aput v4, v0, v1

    const/16 v1, 0x72

    aput v4, v0, v1

    const/16 v1, 0x73

    aput v4, v0, v1

    const/16 v1, 0x74

    aput v4, v0, v1

    const/16 v1, 0x75

    aput v4, v0, v1

    const/16 v1, 0x76

    aput v4, v0, v1

    const/16 v1, 0x77

    aput v4, v0, v1

    const/16 v1, 0x78

    aput v4, v0, v1

    const/16 v1, 0x79

    aput v4, v0, v1

    const/16 v1, 0x7a

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x7b

    aput v4, v0, v1

    const/16 v1, 0x7c

    aput v4, v0, v1

    const/16 v1, 0x7d

    aput v4, v0, v1

    const/16 v1, 0x7e

    aput v4, v0, v1

    const/16 v1, 0x7f

    aput v4, v0, v1

    const/16 v1, 0x80

    aput v3, v0, v1

    const/16 v1, 0x81

    aput v3, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x83

    aput v3, v0, v1

    const/16 v1, 0x84

    aput v3, v0, v1

    const/16 v1, 0x85

    aput v3, v0, v1

    const/16 v1, 0x86

    aput v3, v0, v1

    const/16 v1, 0x87

    aput v3, v0, v1

    const/16 v1, 0x88

    aput v3, v0, v1

    const/16 v1, 0x89

    aput v3, v0, v1

    const/16 v1, 0x8a

    aput v3, v0, v1

    const/16 v1, 0x8b

    aput v3, v0, v1

    const/16 v1, 0x8c

    aput v3, v0, v1

    const/16 v1, 0x8d

    aput v3, v0, v1

    const/16 v1, 0x8e

    aput v3, v0, v1

    const/16 v1, 0x8f

    aput v3, v0, v1

    const/16 v1, 0x90

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x91

    aput v3, v0, v1

    const/16 v1, 0x92

    aput v3, v0, v1

    const/16 v1, 0x93

    aput v3, v0, v1

    const/16 v1, 0x94

    aput v3, v0, v1

    const/16 v1, 0x95

    aput v3, v0, v1

    const/16 v1, 0x96

    aput v3, v0, v1

    const/16 v1, 0x97

    aput v3, v0, v1

    const/16 v1, 0x98

    aput v3, v0, v1

    const/16 v1, 0x99

    aput v3, v0, v1

    const/16 v1, 0x9a

    aput v3, v0, v1

    const/16 v1, 0x9b

    aput v3, v0, v1

    const/16 v1, 0x9c

    aput v3, v0, v1

    const/16 v1, 0x9d

    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v3, v0, v1

    const/16 v1, 0x9f

    aput v3, v0, v1

    const/16 v1, 0xa0

    aput v3, v0, v1

    const/16 v1, 0xa1

    aput v3, v0, v1

    const/16 v1, 0xa2

    aput v3, v0, v1

    const/16 v1, 0xa3

    aput v3, v0, v1

    const/16 v1, 0xa4

    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v3, v0, v1

    const/16 v1, 0xa6

    .line 39
    aput v3, v0, v1

    const/16 v1, 0xa7

    aput v3, v0, v1

    const/16 v1, 0xa8

    aput v3, v0, v1

    const/16 v1, 0xa9

    aput v3, v0, v1

    const/16 v1, 0xaa

    aput v3, v0, v1

    const/16 v1, 0xab

    aput v3, v0, v1

    const/16 v1, 0xac

    aput v3, v0, v1

    const/16 v1, 0xad

    aput v3, v0, v1

    const/16 v1, 0xae

    aput v3, v0, v1

    const/16 v1, 0xaf

    aput v3, v0, v1

    const/16 v1, 0xb0

    aput v3, v0, v1

    const/16 v1, 0xb1

    aput v3, v0, v1

    const/16 v1, 0xb2

    aput v3, v0, v1

    const/16 v1, 0xb3

    aput v3, v0, v1

    const/16 v1, 0xb4

    aput v3, v0, v1

    const/16 v1, 0xb5

    aput v3, v0, v1

    const/16 v1, 0xb6

    aput v3, v0, v1

    const/16 v1, 0xb7

    aput v3, v0, v1

    const/16 v1, 0xb8

    aput v3, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xba

    aput v3, v0, v1

    const/16 v1, 0xbb

    aput v3, v0, v1

    const/16 v1, 0xbc

    .line 40
    aput v3, v0, v1

    const/16 v1, 0xbd

    aput v3, v0, v1

    const/16 v1, 0xbe

    aput v3, v0, v1

    const/16 v1, 0xbf

    aput v3, v0, v1

    const/16 v1, 0xc0

    aput v3, v0, v1

    const/16 v1, 0xc1

    aput v3, v0, v1

    const/16 v1, 0xc2

    aput v3, v0, v1

    const/16 v1, 0xc3

    aput v3, v0, v1

    const/16 v1, 0xc4

    aput v3, v0, v1

    const/16 v1, 0xc5

    aput v3, v0, v1

    const/16 v1, 0xc6

    aput v3, v0, v1

    const/16 v1, 0xc7

    aput v3, v0, v1

    const/16 v1, 0xc8

    aput v3, v0, v1

    const/16 v1, 0xc9

    aput v3, v0, v1

    const/16 v1, 0xca

    aput v3, v0, v1

    const/16 v1, 0xcb

    aput v3, v0, v1

    const/16 v1, 0xcc

    aput v3, v0, v1

    const/16 v1, 0xcd

    aput v3, v0, v1

    const/16 v1, 0xce

    aput v3, v0, v1

    const/16 v1, 0xcf

    aput v3, v0, v1

    const/16 v1, 0xd0

    aput v3, v0, v1

    const/16 v1, 0xd1

    aput v3, v0, v1

    const/16 v1, 0xd2

    .line 41
    aput v3, v0, v1

    const/16 v1, 0xd3

    aput v3, v0, v1

    const/16 v1, 0xd4

    aput v3, v0, v1

    const/16 v1, 0xd5

    aput v3, v0, v1

    const/16 v1, 0xd6

    aput v3, v0, v1

    const/16 v1, 0xd7

    aput v3, v0, v1

    const/16 v1, 0xd8

    aput v3, v0, v1

    const/16 v1, 0xd9

    aput v3, v0, v1

    const/16 v1, 0xda

    aput v3, v0, v1

    const/16 v1, 0xdb

    aput v3, v0, v1

    const/16 v1, 0xdc

    aput v3, v0, v1

    const/16 v1, 0xdd

    aput v3, v0, v1

    const/16 v1, 0xde

    aput v3, v0, v1

    const/16 v1, 0xdf

    aput v3, v0, v1

    const/16 v1, 0xe0

    aput v3, v0, v1

    const/16 v1, 0xe1

    aput v3, v0, v1

    const/16 v1, 0xe2

    aput v3, v0, v1

    const/16 v1, 0xe3

    aput v3, v0, v1

    const/16 v1, 0xe4

    aput v3, v0, v1

    const/16 v1, 0xe5

    aput v3, v0, v1

    const/16 v1, 0xe6

    aput v3, v0, v1

    const/16 v1, 0xe7

    aput v3, v0, v1

    const/16 v1, 0xe8

    .line 42
    aput v3, v0, v1

    const/16 v1, 0xe9

    aput v3, v0, v1

    const/16 v1, 0xea

    aput v3, v0, v1

    const/16 v1, 0xeb

    aput v3, v0, v1

    const/16 v1, 0xec

    aput v3, v0, v1

    const/16 v1, 0xed

    aput v3, v0, v1

    const/16 v1, 0xee

    aput v3, v0, v1

    const/16 v1, 0xef

    aput v3, v0, v1

    const/16 v1, 0xf0

    aput v3, v0, v1

    const/16 v1, 0xf1

    aput v3, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf3

    aput v3, v0, v1

    const/16 v1, 0xf4

    aput v3, v0, v1

    const/16 v1, 0xf5

    aput v3, v0, v1

    const/16 v1, 0xf6

    aput v3, v0, v1

    const/16 v1, 0xf7

    aput v3, v0, v1

    const/16 v1, 0xf8

    aput v3, v0, v1

    const/16 v1, 0xf9

    aput v3, v0, v1

    const/16 v1, 0xfa

    aput v3, v0, v1

    const/16 v1, 0xfb

    aput v3, v0, v1

    const/16 v1, 0xfc

    aput v3, v0, v1

    const/16 v1, 0xfd

    aput v3, v0, v1

    const/16 v1, 0xfe

    .line 43
    aput v3, v0, v1

    const/16 v1, 0xff

    aput v3, v0, v1

    .line 31
    sput-object v0, Lorg/androvoip/audio/ULAW;->exp_lut1:[I

    .line 44
    const/16 v0, 0x100

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/16 v2, -0x7d7c

    aput-short v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x797c

    aput-short v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, -0x757c

    aput-short v2, v0, v1

    const/16 v1, -0x717c

    aput-short v1, v0, v7

    .line 45
    const/16 v1, -0x6d7c

    aput-short v1, v0, v6

    const/16 v1, -0x697c

    aput-short v1, v0, v5

    const/16 v1, -0x657c

    aput-short v1, v0, v4

    const/16 v1, -0x617c

    aput-short v1, v0, v3

    const/16 v1, 0x8

    const/16 v2, -0x5d7c

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x597c

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, -0x557c

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x517c

    aput-short v2, v0, v1

    const/16 v1, 0xc

    .line 46
    const/16 v2, -0x4d7c

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0x497c

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x457c

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, -0x417c

    aput-short v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, -0x3e7c

    aput-short v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, -0x3c7c

    aput-short v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, -0x3a7c

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, -0x387c

    aput-short v2, v0, v1

    const/16 v1, 0x14

    .line 47
    const/16 v2, -0x367c

    aput-short v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0x347c

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, -0x327c

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x307c

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, -0x2e7c

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, -0x2c7c

    aput-short v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, -0x2a7c

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, -0x287c

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    .line 48
    const/16 v2, -0x267c

    aput-short v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x247c

    aput-short v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, -0x227c

    aput-short v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x207c

    aput-short v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, -0x1efc

    aput-short v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, -0x1dfc

    aput-short v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, -0x1cfc

    aput-short v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, -0x1bfc

    aput-short v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, -0x1afc

    aput-short v2, v0, v1

    const/16 v1, 0x25

    .line 49
    const/16 v2, -0x19fc

    aput-short v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, -0x18fc

    aput-short v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, -0x17fc

    aput-short v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, -0x16fc

    aput-short v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, -0x15fc

    aput-short v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, -0x14fc

    aput-short v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, -0x13fc

    aput-short v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, -0x12fc

    aput-short v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x11fc

    aput-short v2, v0, v1

    const/16 v1, 0x2e

    .line 50
    const/16 v2, -0x10fc

    aput-short v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, -0xffc

    aput-short v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, -0xf3c

    aput-short v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0xebc

    aput-short v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, -0xe3c

    aput-short v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, -0xdbc

    aput-short v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, -0xd3c

    aput-short v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0xcbc

    aput-short v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, -0xc3c

    aput-short v2, v0, v1

    const/16 v1, 0x37

    .line 51
    const/16 v2, -0xbbc

    aput-short v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, -0xb3c

    aput-short v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, -0xabc

    aput-short v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, -0xa3c

    aput-short v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, -0x9bc

    aput-short v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, -0x93c

    aput-short v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, -0x8bc

    aput-short v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, -0x83c

    aput-short v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, -0x7bc

    aput-short v2, v0, v1

    const/16 v1, 0x40

    .line 52
    const/16 v2, -0x75c

    aput-short v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, -0x71c

    aput-short v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, -0x6dc

    aput-short v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, -0x69c

    aput-short v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, -0x65c

    aput-short v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, -0x61c

    aput-short v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, -0x5dc

    aput-short v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, -0x59c

    aput-short v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, -0x55c

    aput-short v2, v0, v1

    const/16 v1, 0x49

    .line 53
    const/16 v2, -0x51c

    aput-short v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, -0x4dc

    aput-short v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, -0x49c

    aput-short v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, -0x45c

    aput-short v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, -0x41c

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, -0x3dc

    aput-short v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, -0x39c

    aput-short v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, -0x36c

    aput-short v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, -0x34c

    aput-short v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, -0x32c

    aput-short v2, v0, v1

    const/16 v1, 0x53

    .line 54
    const/16 v2, -0x30c

    aput-short v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, -0x2ec

    aput-short v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, -0x2cc

    aput-short v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, -0x2ac

    aput-short v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, -0x28c

    aput-short v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, -0x26c

    aput-short v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, -0x24c

    aput-short v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, -0x22c

    aput-short v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, -0x20c

    aput-short v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, -0x1ec

    aput-short v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, -0x1cc

    aput-short v2, v0, v1

    const/16 v1, 0x5e

    .line 55
    const/16 v2, -0x1ac

    aput-short v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, -0x18c

    aput-short v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, -0x174

    aput-short v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, -0x164

    aput-short v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, -0x154

    aput-short v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, -0x144

    aput-short v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, -0x134

    aput-short v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, -0x124

    aput-short v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, -0x114

    aput-short v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, -0x104

    aput-short v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, -0xf4

    aput-short v2, v0, v1

    const/16 v1, 0x69

    .line 56
    const/16 v2, -0xe4

    aput-short v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, -0xd4

    aput-short v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, -0xc4

    aput-short v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, -0xb4

    aput-short v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, -0xa4

    aput-short v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, -0x94

    aput-short v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, -0x84

    aput-short v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, -0x78

    aput-short v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, -0x70

    aput-short v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, -0x68

    aput-short v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, -0x60

    aput-short v2, v0, v1

    const/16 v1, 0x74

    .line 57
    const/16 v2, -0x58

    aput-short v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x50

    aput-short v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, -0x48

    aput-short v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0x40

    aput-short v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, -0x38

    aput-short v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, -0x30

    aput-short v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x28

    aput-short v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, -0x20

    aput-short v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, -0x18

    aput-short v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, -0x10

    aput-short v2, v0, v1

    const/16 v1, 0x7e

    const/4 v2, -0x8

    aput-short v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x7d7c

    aput-short v2, v0, v1

    const/16 v1, 0x81

    .line 58
    const/16 v2, 0x797c

    aput-short v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x757c

    aput-short v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x717c

    aput-short v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x6d7c

    aput-short v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x697c

    aput-short v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x657c

    aput-short v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x617c

    aput-short v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x5d7c

    aput-short v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x597c

    aput-short v2, v0, v1

    const/16 v1, 0x8a

    .line 59
    const/16 v2, 0x557c

    aput-short v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x517c

    aput-short v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x4d7c

    aput-short v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x497c

    aput-short v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x457c

    aput-short v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x417c

    aput-short v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x3e7c

    aput-short v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x3c7c

    aput-short v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x3a7c

    aput-short v2, v0, v1

    const/16 v1, 0x93

    .line 60
    const/16 v2, 0x387c

    aput-short v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x367c

    aput-short v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x347c

    aput-short v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x327c

    aput-short v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0x307c

    aput-short v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x2e7c

    aput-short v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x2c7c

    aput-short v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x2a7c

    aput-short v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x287c

    aput-short v2, v0, v1

    const/16 v1, 0x9c

    .line 61
    const/16 v2, 0x267c

    aput-short v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x247c

    aput-short v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x227c

    aput-short v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x207c

    aput-short v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x1efc

    aput-short v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x1dfc

    aput-short v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x1cfc

    aput-short v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x1bfc

    aput-short v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x1afc

    aput-short v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x19fc

    aput-short v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x18fc

    aput-short v2, v0, v1

    const/16 v1, 0xa7

    .line 62
    const/16 v2, 0x17fc

    aput-short v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x16fc

    aput-short v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x15fc

    aput-short v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x14fc

    aput-short v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x13fc

    aput-short v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x12fc

    aput-short v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x11fc

    aput-short v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x10fc

    aput-short v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0xffc

    aput-short v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0xf3c

    aput-short v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0xebc

    aput-short v2, v0, v1

    const/16 v1, 0xb2

    .line 63
    const/16 v2, 0xe3c

    aput-short v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0xdbc

    aput-short v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0xd3c

    aput-short v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0xcbc

    aput-short v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0xc3c

    aput-short v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0xbbc

    aput-short v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0xb3c

    aput-short v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0xabc

    aput-short v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0xa3c

    aput-short v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x9bc

    aput-short v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x93c

    aput-short v2, v0, v1

    const/16 v1, 0xbd

    .line 64
    const/16 v2, 0x8bc

    aput-short v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x83c

    aput-short v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x7bc

    aput-short v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x75c

    aput-short v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x71c

    aput-short v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x6dc

    aput-short v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x69c

    aput-short v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x65c

    aput-short v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x61c

    aput-short v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x5dc

    aput-short v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x59c

    aput-short v2, v0, v1

    const/16 v1, 0xc8

    .line 65
    const/16 v2, 0x55c

    aput-short v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x51c

    aput-short v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x4dc

    aput-short v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x49c

    aput-short v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x45c

    aput-short v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x41c

    aput-short v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x3dc

    aput-short v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x39c

    aput-short v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x36c

    aput-short v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x34c

    aput-short v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x32c

    aput-short v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x30c

    aput-short v2, v0, v1

    const/16 v1, 0xd4

    .line 66
    const/16 v2, 0x2ec

    aput-short v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x2cc

    aput-short v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x2ac

    aput-short v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x28c

    aput-short v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x26c

    aput-short v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x24c

    aput-short v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x22c

    aput-short v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x20c

    aput-short v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x1ec

    aput-short v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x1cc

    aput-short v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x1ac

    aput-short v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x18c

    aput-short v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x174

    aput-short v2, v0, v1

    const/16 v1, 0xe1

    .line 67
    const/16 v2, 0x164

    aput-short v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x154

    aput-short v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x144

    aput-short v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x134

    aput-short v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x124

    aput-short v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x114

    aput-short v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x104

    aput-short v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0xf4

    aput-short v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0xe4

    aput-short v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0xd4

    aput-short v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0xc4

    aput-short v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0xb4

    aput-short v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0xa4

    aput-short v2, v0, v1

    const/16 v1, 0xee

    .line 68
    const/16 v2, 0x94

    aput-short v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x84

    aput-short v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x78

    aput-short v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x70

    aput-short v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x68

    aput-short v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x60

    aput-short v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x58

    aput-short v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x50

    aput-short v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x48

    aput-short v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x40

    aput-short v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x38

    aput-short v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x30

    aput-short v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x28

    aput-short v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x20

    aput-short v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x18

    aput-short v2, v0, v1

    const/16 v1, 0xfd

    .line 69
    const/16 v2, 0x10

    aput-short v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x8

    aput-short v2, v0, v1

    .line 44
    sput-object v0, Lorg/androvoip/audio/ULAW;->u2l:[S

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static linear2ulaw(I)B
    .locals 6
    .param p0, "sample"    # I

    .prologue
    .line 86
    const/16 v4, 0x7fff

    if-le p0, v4, :cond_4

    .line 87
    const/16 p0, 0x7fff

    .line 92
    :cond_0
    :goto_0
    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v2, v4, 0x80

    .line 93
    .local v2, "sign":I
    if-eqz v2, :cond_1

    .line 94
    neg-int p0, p0

    .line 96
    :cond_1
    const/16 v4, 0x7f7b

    if-le p0, v4, :cond_2

    .line 97
    const/16 p0, 0x7f7b

    .line 101
    :cond_2
    add-int/lit16 p0, p0, 0x84

    .line 102
    sget-object v4, Lorg/androvoip/audio/ULAW;->exp_lut1:[I

    shr-int/lit8 v5, p0, 0x7

    and-int/lit16 v5, v5, 0xff

    aget v0, v4, v5

    .line 103
    .local v0, "exponent":I
    add-int/lit8 v4, v0, 0x3

    shr-int v4, p0, v4

    and-int/lit8 v1, v4, 0xf

    .line 104
    .local v1, "mantissa":I
    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v2

    or-int/2addr v4, v1

    xor-int/lit8 v3, v4, -0x1

    .line 106
    .local v3, "ulawbyte":I
    if-nez v3, :cond_3

    .line 107
    const/4 v3, 0x2

    .line 110
    :cond_3
    int-to-byte v4, v3

    return v4

    .line 88
    .end local v0    # "exponent":I
    .end local v1    # "mantissa":I
    .end local v2    # "sign":I
    .end local v3    # "ulawbyte":I
    :cond_4
    const/16 v4, -0x8000

    if-ge p0, v4, :cond_0

    .line 89
    const/16 p0, -0x8000

    goto :goto_0
.end method

.method public static ulaw2linear(B)S
    .locals 2
    .param p0, "ulawbyte"    # B

    .prologue
    .line 72
    sget-object v0, Lorg/androvoip/audio/ULAW;->u2l:[S

    and-int/lit16 v1, p0, 0xff

    aget-short v0, v0, v1

    return v0
.end method
