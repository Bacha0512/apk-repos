.class public final Lcom/google/android/gms/internal/zzalt;
.super Lcom/google/android/gms/analytics/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzj",
        "<",
        "Lcom/google/android/gms/internal/zzalt;",
        ">;"
    }
.end annotation


# instance fields
.field private zzafc:Ljava/lang/String;

.field private zzafd:Ljava/lang/String;

.field private zzafe:Ljava/lang/String;

.field private zzaff:Ljava/lang/String;

.field private zzafg:Z

.field private zzafh:Ljava/lang/String;

.field private zzafi:Z

.field private zzafj:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzj;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalt;->zzafe:Ljava/lang/String;

    return-object v0
.end method

.method public final setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalt;->zzafd:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalt;->zzafe:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hitType"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalt;->zzafc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalt;->zzafd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalt;->zzafe:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidAdId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalt;->zzaff:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdTargetingEnabled"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzalt;->zzafg:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionControl"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalt;->zzafh:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonInteraction"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzalt;->zzafi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sampleRate"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalt;->zzafj:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalt;->zzh(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzG(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzalt;->zzafg:Z

    return-void
.end method

.method public final zzH(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzalt;->zzafi:Z

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzj;)V
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    check-cast p1, Lcom/google/android/gms/internal/zzalt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafc:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/gms/internal/zzalt;->zzafc:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafd:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/gms/internal/zzalt;->zzafd:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafe:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafe:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/gms/internal/zzalt;->zzafe:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzalt;->zzaff:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalt;->zzaff:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/gms/internal/zzalt;->zzaff:Ljava/lang/String;

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafg:Z

    if-eqz v1, :cond_4

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzalt;->zzafg:Z

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafh:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafh:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/gms/internal/zzalt;->zzafh:Ljava/lang/String;

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafi:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzalt;->zzafi:Z

    iput-boolean v1, p1, Lcom/google/android/gms/internal/zzalt;->zzafi:Z

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalt;->zzafj:D

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_7

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalt;->zzafj:D

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_8

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_8

    :goto_0
    const-string v1, "Sample rate must be between 0% and 100%"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    iput-wide v2, p1, Lcom/google/android/gms/internal/zzalt;->zzafj:D

    :cond_7
    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzbj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalt;->zzafc:Ljava/lang/String;

    return-void
.end method

.method public final zzbk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalt;->zzaff:Ljava/lang/String;

    return-void
.end method

.method public final zzjW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalt;->zzafc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalt;->zzafd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalt;->zzaff:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzalt;->zzafg:Z

    return v0
.end method

.method public final zzka()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalt;->zzafh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzkb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzalt;->zzafi:Z

    return v0
.end method

.method public final zzkc()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzalt;->zzafj:D

    return-wide v0
.end method
