.class public final Lcom/google/android/gms/internal/zzaez;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method public static zzb(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaew;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaew;->zzw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzDz:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzDA:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagz;->zzaL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/zzaew;->zzf(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagz;->zzaM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/zzaew;->zzg(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v0, "fbs_aeid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagz;->zzaL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaew;->zzf(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    const-string v0, "fbs_aeid"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zzagz;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagz;->zzaM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaew;->zzg(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    const-string v0, "fbs_aeid"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zzagz;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
