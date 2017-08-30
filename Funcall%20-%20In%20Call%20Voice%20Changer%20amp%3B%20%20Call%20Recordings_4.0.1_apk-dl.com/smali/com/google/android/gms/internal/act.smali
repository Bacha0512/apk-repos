.class public final Lcom/google/android/gms/internal/act;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj",
        "<",
        "Lcom/google/android/gms/internal/act;",
        ">;"
    }
.end annotation


# instance fields
.field private zzcqq:I

.field private zzcqr:J

.field private zzcrs:[I

.field private zzcrt:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    sget-object v0, Lcom/google/android/gms/internal/ads;->zzcsC:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    sget-object v0, Lcom/google/android/gms/internal/ads;->zzcsC:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/act;->zzcsx:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/act;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/act;

    iget v2, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    iget v3, p1, Lcom/google/android/gms/internal/act;->zzcqq:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/act;->zzcqr:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/act;->zzcrs:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/adn;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/act;->zzcrt:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/adn;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object v1, p1, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x20

    const/16 v8, 0x18

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-super {p0, p1, v4}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v4}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLG()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v5

    new-array v6, v5, [I

    move v3, v2

    move v1, v2

    :goto_1
    if-ge v3, v5, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v4}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move v0, v1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    aput v7, v6, v1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    if-nez v0, :cond_4

    array-length v3, v6

    if-ne v1, v3, :cond_4

    iput-object v6, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v0, v0

    goto :goto_3

    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    invoke-static {v6, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcn(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    move v0, v2

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_a

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v1, v1

    goto :goto_5

    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    :cond_9
    iput-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    :cond_a
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/adg;->zzco(I)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {p1, v9}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v5

    new-array v6, v5, [I

    move v3, v2

    move v1, v2

    :goto_7
    if-ge v3, v5, :cond_c

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v7

    packed-switch v7, :pswitch_data_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v4}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move v0, v1

    :goto_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_7

    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    aput v7, v6, v1

    goto :goto_8

    :cond_c
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    if-nez v0, :cond_d

    move v0, v2

    :goto_9
    if-nez v0, :cond_e

    array-length v3, v6

    if-ne v1, v3, :cond_e

    iput-object v6, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v0, v0

    goto :goto_9

    :cond_e
    add-int v3, v0, v1

    new-array v3, v3, [I

    if-eqz v0, :cond_f

    iget-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    invoke-static {v6, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcn(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    move v0, v2

    :goto_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v4

    if-lez v4, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v4

    packed-switch v4, :pswitch_data_5

    goto :goto_a

    :pswitch_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_10
    if-eqz v0, :cond_14

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    new-array v4, v0, [I

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v5

    packed-switch v5, :pswitch_data_6

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v9}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_c

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v1, v1

    goto :goto_b

    :pswitch_6
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_c

    :cond_13
    iput-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    :cond_14
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/adg;->zzco(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x22 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/adh;->zzb(IJ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v0, v0

    if-lez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v0, v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 8

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/adh;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/adh;->zzcr(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/adh;->zzcr(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method
