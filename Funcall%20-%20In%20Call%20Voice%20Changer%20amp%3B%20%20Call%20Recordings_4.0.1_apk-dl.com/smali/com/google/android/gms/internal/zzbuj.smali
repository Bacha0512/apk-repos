.class public final Lcom/google/android/gms/internal/zzbuj;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbug;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DP:",
            "Ljava/lang/Object;",
            "DT:",
            "Ljava/lang/Object;",
            ">(TDP;",
            "Lcom/google/android/gms/internal/zzbug",
            "<TDP;TDT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbug;->zztF()Lcom/google/android/gms/internal/zzbuh;

    move-result-object v4

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzbug;->zzy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzbuh;->zzcY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzbug;->zzx(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzbuh;->zzz(Ljava/lang/Object;)I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-interface {v4, v5, v0}, Lcom/google/android/gms/internal/zzbuh;->zzg(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/zzbug;->zzd(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v4, v5, v0}, Lcom/google/android/gms/internal/zzbuh;->zzf(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/google/android/gms/internal/zzbuk;->zzaVr:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " not set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v4, v5, v0}, Lcom/google/android/gms/internal/zzbuh;->zze(Ljava/lang/Object;I)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v2, v8

    if-nez v7, :cond_2

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/zzbug;->zzc(Ljava/lang/Object;I)I

    move-result v2

    int-to-double v2, v2

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/zzbuk;->zztR()Lcom/google/android/gms/internal/zzbuk;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzbuk;->zzdg(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbum;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/zzbum;->zzf(D)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v0, "Field out of range"

    goto :goto_0

    :cond_2
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v2, v2, v8

    if-nez v2, :cond_6

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/zzbug;->zzb(Ljava/lang/Object;I)D

    move-result-wide v2

    goto :goto_2

    :cond_3
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzbuh;->zzA(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/zzbuk;->zztR()Lcom/google/android/gms/internal/zzbuk;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Lcom/google/android/gms/internal/zzbuk;->zzC(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbum;

    move-result-object v6

    if-eqz v6, :cond_6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, v7}, Lcom/google/android/gms/internal/zzbug;->zza(Ljava/lang/Object;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v0, "DataPoint out of range"

    goto/16 :goto_0

    :cond_5
    long-to-double v8, v8

    div-double/2addr v2, v8

    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/zzbum;->zzf(D)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "DataPoint out of range"

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method
