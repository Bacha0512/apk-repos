.class public final Lcom/google/android/gms/internal/zzbm;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj",
        "<",
        "Lcom/google/android/gms/internal/zzbm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzkM:[Lcom/google/android/gms/internal/zzbm;


# instance fields
.field public key:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/zzbm;->key:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbm;->value:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbm;->zzcso:Lcom/google/android/gms/internal/adl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbm;->zzcsx:I

    return-void
.end method

.method public static zzr()[Lcom/google/android/gms/internal/zzbm;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbm;->zzkM:[Lcom/google/android/gms/internal/zzbm;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/adn;->zzcsw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbm;->zzkM:[Lcom/google/android/gms/internal/zzbm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbm;

    sput-object v0, Lcom/google/android/gms/internal/zzbm;->zzkM:[Lcom/google/android/gms/internal/zzbm;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzbm;->zzkM:[Lcom/google/android/gms/internal/zzbm;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbm;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzbm;

    iget v2, p0, Lcom/google/android/gms/internal/zzbm;->key:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbm;->key:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/zzbm;->value:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbm;->value:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbm;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbm;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbm;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbm;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbm;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbm;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbm;->key:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbm;->value:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbm;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbm;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbm;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbm;->key:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbm;->value:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzbm;->key:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzbm;->value:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzbm;->key:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbm;->value:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
