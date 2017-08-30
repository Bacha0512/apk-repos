.class public final Lcom/google/android/gms/internal/zzbzn;
.super Ljava/lang/Object;


# static fields
.field private static final zzaWi:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbzn;->zzaWi:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static zzdh(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const v9, 0x1b873593

    const v8, -0x3361d2af    # -8.2930312E7f

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzbzn;->zzaWi:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zzbzn;->zzaWi:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-array v3, v2, [B

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v3

    and-int/lit8 v0, v4, -0x4

    add-int/lit8 v5, v0, 0x0

    move v0, v1

    move v2, v1

    :goto_2
    if-ge v0, v5, :cond_4

    aget-byte v6, v3, v0

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v0, 0x2

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v0, 0x3

    aget-byte v7, v3, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    mul-int/2addr v6, v8

    shl-int/lit8 v7, v6, 0xf

    ushr-int/lit8 v6, v6, 0x11

    or-int/2addr v6, v7

    mul-int/2addr v6, v9

    xor-int/2addr v2, v6

    shl-int/lit8 v6, v2, 0xd

    ushr-int/lit8 v2, v2, 0x13

    or-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x5

    const v6, -0x19ab949c

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    and-int/lit8 v0, v4, 0x3

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_3
    xor-int/2addr v0, v4

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v0, v5, 0x2

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    :goto_4
    add-int/lit8 v1, v5, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    :pswitch_1
    aget-byte v0, v3, v5

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    mul-int/2addr v0, v8

    shl-int/lit8 v1, v0, 0xf

    ushr-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v1

    mul-int/2addr v0, v9

    xor-int/2addr v0, v2

    goto :goto_3

    :pswitch_2
    move v0, v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
