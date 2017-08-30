.class public final Lcom/google/android/gms/internal/aee;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj",
        "<",
        "Lcom/google/android/gms/internal/aee;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzctz:[Lcom/google/android/gms/internal/aee;


# instance fields
.field private name:Ljava/lang/String;

.field private zzctA:[Z

.field private zzctB:[J

.field private zzctC:[Ljava/lang/String;

.field private zzctD:[Lcom/google/android/gms/internal/aef;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads;->zzcsG:[Z

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    sget-object v0, Lcom/google/android/gms/internal/ads;->zzcsD:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    sget-object v0, Lcom/google/android/gms/internal/ads;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/aef;->zzLZ()[Lcom/google/android/gms/internal/aef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aee;->zzcsx:I

    return-void
.end method

.method public static zzLY()[Lcom/google/android/gms/internal/aee;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/aee;->zzctz:[Lcom/google/android/gms/internal/aee;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/adn;->zzcsw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/aee;->zzctz:[Lcom/google/android/gms/internal/aee;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/aee;

    sput-object v0, Lcom/google/android/gms/internal/aee;->zzctz:[Lcom/google/android/gms/internal/aee;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/aee;->zzctz:[Lcom/google/android/gms/internal/aee;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/aee;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/aee;

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    iget-object v3, p1, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/adn;->equals([Z[Z)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/aee;->zzctB:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/adn;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/adn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    iget-object v3, p1, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/adn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p1, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object v1, p1, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    invoke-static {v2}, Lcom/google/android/gms/internal/adn;->hashCode([Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    invoke-static {v2}, Lcom/google/android/gms/internal/adn;->hashCode([J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/adn;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    invoke-static {v2}, Lcom/google/android/gms/internal/adn;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Z

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v3

    aput-boolean v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v3

    aput-boolean v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcn(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [Z

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v4

    aput-boolean v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v2, v2

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/adg;->zzco(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLB()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v0, v0

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLB()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcn(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v2

    move v0, v1

    :goto_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLB()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    if-nez v2, :cond_d

    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_a
    array-length v4, v0

    if-ge v2, v4, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLB()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v2, v2

    goto :goto_9

    :cond_e
    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/adg;->zzco(I)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_b

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    if-nez v0, :cond_13

    move v0, v1

    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/aef;

    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_14

    new-instance v3, Lcom/google/android/gms/internal/aef;

    invoke-direct {v3}, Lcom/google/android/gms/internal/aef;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    array-length v0, v0

    goto :goto_d

    :cond_14
    new-instance v3, Lcom/google/android/gms/internal/aef;

    invoke-direct {v3}, Lcom/google/android/gms/internal/aef;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x1a -> :sswitch_5
        0x22 -> :sswitch_6
        0x2a -> :sswitch_7
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/adh;->zzk(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/gms/internal/adh;->zzb(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    array-length v0, v0

    if-lez v0, :cond_6

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/adh;->zzaP(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/adh;->zzhQ(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v3

    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    array-length v1, v1

    if-lez v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    array-length v1, v1

    if-ge v2, v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return v0
.end method
