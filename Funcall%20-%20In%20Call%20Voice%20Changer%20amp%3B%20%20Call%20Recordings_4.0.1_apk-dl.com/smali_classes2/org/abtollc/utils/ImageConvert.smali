.class public Lorg/abtollc/utils/ImageConvert;
.super Ljava/lang/Object;
.source "ImageConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final YUV2RGB([BII)[I
    .locals 20
    .param p0, "yuyv_image"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 6
    mul-int v14, p1, p2

    mul-int/lit8 v14, v14, 0x3

    new-array v12, v14, [I

    .line 16
    .local v12, "rgb_image":[I
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    mul-int v14, p1, p2

    mul-int/lit8 v14, v14, 0x3

    if-ge v8, v14, :cond_c

    .line 18
    aget-byte v13, p0, v9

    .line 19
    .local v13, "y":I
    add-int/lit8 v14, v9, 0x1

    aget-byte v4, p0, v14

    .line 20
    .local v4, "cb":I
    add-int/lit8 v14, v9, 0x3

    aget-byte v5, p0, v14

    .line 22
    .local v5, "cr":I
    int-to-double v14, v13

    const-wide v16, 0x3ff6810624dd2f1bL    # 1.4065

    add-int/lit8 v18, v5, -0x80

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v10, v14, v16

    .line 23
    .local v10, "r":D
    int-to-double v14, v13

    const-wide v16, 0x3fd61cac083126e9L    # 0.3455

    add-int/lit8 v18, v4, -0x80

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    const-wide v16, 0x3fe6f0d844d013a9L    # 0.7169

    add-int/lit8 v18, v5, -0x80

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v6, v14, v16

    .line 24
    .local v6, "g":D
    int-to-double v14, v13

    const-wide v16, 0x3ffc76c8b4395810L    # 1.779

    add-int/lit8 v18, v4, -0x80

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v2, v14, v16

    .line 27
    .local v2, "b":D
    const-wide/16 v14, 0x0

    cmpg-double v14, v10, v14

    if-gez v14, :cond_6

    const-wide/16 v10, 0x0

    .line 29
    :cond_0
    :goto_1
    const-wide/16 v14, 0x0

    cmpg-double v14, v6, v14

    if-gez v14, :cond_7

    const-wide/16 v6, 0x0

    .line 31
    :cond_1
    :goto_2
    const-wide/16 v14, 0x0

    cmpg-double v14, v2, v14

    if-gez v14, :cond_8

    const-wide/16 v2, 0x0

    .line 34
    :cond_2
    :goto_3
    double-to-int v14, v10

    int-to-byte v14, v14

    aput v14, v12, v8

    .line 35
    const/4 v14, 0x1

    double-to-int v15, v6

    int-to-byte v15, v15

    aput v15, v12, v14

    .line 36
    add-int/lit8 v14, v8, 0x2

    double-to-int v15, v2

    int-to-byte v15, v15

    aput v15, v12, v14

    .line 39
    add-int/lit8 v14, v9, 0x2

    aget-byte v13, p0, v14

    .line 40
    add-int/lit8 v14, v9, 0x1

    aget-byte v4, p0, v14

    .line 41
    add-int/lit8 v14, v9, 0x3

    aget-byte v5, p0, v14

    .line 43
    int-to-double v14, v13

    const-wide v16, 0x3ff6810624dd2f1bL    # 1.4065

    add-int/lit8 v18, v5, -0x80

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v10, v14, v16

    .line 44
    int-to-double v14, v13

    const-wide v16, 0x3fd61cac083126e9L    # 0.3455

    add-int/lit8 v18, v4, -0x80

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    const-wide v16, 0x3fe6f0d844d013a9L    # 0.7169

    add-int/lit8 v18, v5, -0x80

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v6, v14, v16

    .line 45
    int-to-double v14, v13

    const-wide v16, 0x3ffc76c8b4395810L    # 1.779

    add-int/lit8 v18, v4, -0x80

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v2, v14, v16

    .line 47
    const-wide/16 v14, 0x0

    cmpg-double v14, v10, v14

    if-gez v14, :cond_9

    const-wide/16 v10, 0x0

    .line 49
    :cond_3
    :goto_4
    const-wide/16 v14, 0x0

    cmpg-double v14, v6, v14

    if-gez v14, :cond_a

    const-wide/16 v6, 0x0

    .line 51
    :cond_4
    :goto_5
    const-wide/16 v14, 0x0

    cmpg-double v14, v2, v14

    if-gez v14, :cond_b

    const-wide/16 v2, 0x0

    .line 54
    :cond_5
    :goto_6
    add-int/lit8 v14, v8, 0x3

    double-to-int v15, v10

    aput v15, v12, v14

    .line 55
    const/4 v14, 0x4

    double-to-int v15, v6

    aput v15, v12, v14

    .line 56
    add-int/lit8 v14, v8, 0x5

    double-to-int v15, v2

    aput v15, v12, v14

    .line 16
    add-int/lit8 v8, v8, 0x6

    add-int/lit8 v9, v9, 0x4

    goto/16 :goto_0

    .line 28
    :cond_6
    const-wide v14, 0x406fe00000000000L    # 255.0

    cmpl-double v14, v10, v14

    if-lez v14, :cond_0

    const-wide v10, 0x406fe00000000000L    # 255.0

    goto/16 :goto_1

    .line 30
    :cond_7
    const-wide v14, 0x406fe00000000000L    # 255.0

    cmpl-double v14, v6, v14

    if-lez v14, :cond_1

    const-wide v6, 0x406fe00000000000L    # 255.0

    goto/16 :goto_2

    .line 32
    :cond_8
    const-wide v14, 0x406fe00000000000L    # 255.0

    cmpl-double v14, v2, v14

    if-lez v14, :cond_2

    const-wide v2, 0x406fe00000000000L    # 255.0

    goto/16 :goto_3

    .line 48
    :cond_9
    const-wide v14, 0x406fe00000000000L    # 255.0

    cmpl-double v14, v10, v14

    if-lez v14, :cond_3

    const-wide v10, 0x406fe00000000000L    # 255.0

    goto :goto_4

    .line 50
    :cond_a
    const-wide v14, 0x406fe00000000000L    # 255.0

    cmpl-double v14, v6, v14

    if-lez v14, :cond_4

    const-wide v6, 0x406fe00000000000L    # 255.0

    goto :goto_5

    .line 52
    :cond_b
    const-wide v14, 0x406fe00000000000L    # 255.0

    cmpl-double v14, v2, v14

    if-lez v14, :cond_5

    const-wide v2, 0x406fe00000000000L    # 255.0

    goto :goto_6

    .line 59
    .end local v2    # "b":D
    .end local v4    # "cb":I
    .end local v5    # "cr":I
    .end local v6    # "g":D
    .end local v10    # "r":D
    .end local v13    # "y":I
    :cond_c
    return-object v12
.end method
