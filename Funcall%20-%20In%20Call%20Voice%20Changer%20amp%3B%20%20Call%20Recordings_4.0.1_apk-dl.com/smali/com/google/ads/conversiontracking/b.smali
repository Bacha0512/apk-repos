.class public final Lcom/google/ads/conversiontracking/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[B

.field private static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 63
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/ads/conversiontracking/b;->a:[C

    .line 68
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/ads/conversiontracking/b;->b:[C

    .line 76
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/conversiontracking/b;->c:[B

    .line 110
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/ads/conversiontracking/b;->d:[B

    return-void

    .line 76
    nop

    :array_0
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    .line 110
    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method public static a([BII[CZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 285
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/ads/conversiontracking/b;->a([BII[CI)[C

    move-result-object v1

    .line 286
    array-length v0, v1

    .line 290
    :goto_0
    if-nez p4, :cond_0

    if-lez v0, :cond_0

    .line 291
    add-int/lit8 v2, v0, -0x1

    aget-char v2, v1, v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    .line 297
    :cond_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 294
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    array-length v1, p0

    sget-object v2, Lcom/google/ads/conversiontracking/b;->b:[C

    invoke-static {p0, v0, v1, v2, p1}, Lcom/google/ads/conversiontracking/b;->a([BII[CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII[CI)[C
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x0

    .line 312
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 313
    mul-int/lit8 v0, v0, 0x4

    .line 314
    div-int v2, v0, p4

    add-int/2addr v0, v2

    new-array v3, v0, [C

    .line 319
    add-int/lit8 v5, p2, -0x2

    move v6, v1

    move v4, v1

    move v2, v1

    .line 321
    :goto_0
    if-ge v2, v5, :cond_1

    .line 326
    add-int v0, v2, p1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, p1

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x18

    ushr-int/lit8 v7, v7, 0x10

    or-int/2addr v0, v7

    add-int/lit8 v7, v2, 0x2

    add-int/2addr v7, p1

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x18

    ushr-int/lit8 v7, v7, 0x18

    or-int/2addr v0, v7

    .line 330
    ushr-int/lit8 v7, v0, 0x12

    aget-char v7, p3, v7

    aput-char v7, v3, v4

    .line 331
    add-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v8, v0, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, p3, v8

    aput-char v8, v3, v7

    .line 332
    add-int/lit8 v7, v4, 0x2

    ushr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, p3, v8

    aput-char v8, v3, v7

    .line 333
    add-int/lit8 v7, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, p3, v0

    aput-char v0, v3, v7

    .line 335
    add-int/lit8 v0, v6, 0x4

    .line 336
    if-ne v0, p4, :cond_0

    .line 337
    add-int/lit8 v0, v4, 0x4

    aput-char v9, v3, v0

    .line 338
    add-int/lit8 v4, v4, 0x1

    move v0, v1

    .line 321
    :cond_0
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v4, v4, 0x4

    move v6, v0

    goto :goto_0

    .line 343
    :cond_1
    if-ge v2, p2, :cond_3

    .line 344
    add-int v1, v2, p1

    sub-int v2, p2, v2

    move-object v0, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/ads/conversiontracking/b;->a([BII[CI[C)[C

    .line 346
    add-int/lit8 v0, v6, 0x4

    .line 347
    if-ne v0, p4, :cond_2

    .line 349
    add-int/lit8 v0, v4, 0x4

    aput-char v9, v3, v0

    .line 350
    add-int/lit8 v4, v4, 0x1

    .line 352
    :cond_2
    add-int/lit8 v0, v4, 0x4

    .line 356
    :cond_3
    return-object v3
.end method

.method private static a([BII[CI[C)[C
    .locals 4

    .prologue
    const/16 v3, 0x3d

    const/4 v0, 0x0

    .line 216
    if-lez p2, :cond_1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    move v2, v1

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    :goto_1
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :cond_0
    or-int/2addr v0, v1

    .line 221
    packed-switch p2, :pswitch_data_0

    .line 241
    :goto_2
    return-object p3

    :cond_1
    move v2, v0

    .line 216
    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    .line 223
    :pswitch_0
    ushr-int/lit8 v1, v0, 0x12

    aget-char v1, p5, v1

    aput-char v1, p3, p4

    .line 224
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 225
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 226
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, p5, v0

    aput-char v0, p3, v1

    goto :goto_2

    .line 229
    :pswitch_1
    ushr-int/lit8 v1, v0, 0x12

    aget-char v1, p5, v1

    aput-char v1, p3, p4

    .line 230
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 231
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, p5, v0

    aput-char v0, p3, v1

    .line 232
    add-int/lit8 v0, p4, 0x3

    aput-char v3, p3, v0

    goto :goto_2

    .line 235
    :pswitch_2
    ushr-int/lit8 v1, v0, 0x12

    aget-char v1, p5, v1

    aput-char v1, p3, p4

    .line 236
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, p5, v0

    aput-char v0, p3, v1

    .line 237
    add-int/lit8 v0, p4, 0x2

    aput-char v3, p3, v0

    .line 238
    add-int/lit8 v0, p4, 0x3

    aput-char v3, p3, v0

    goto :goto_2

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
