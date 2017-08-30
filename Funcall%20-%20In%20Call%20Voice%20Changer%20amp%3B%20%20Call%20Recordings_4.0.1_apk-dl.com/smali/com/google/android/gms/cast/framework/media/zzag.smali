.class final Lcom/google/android/gms/cast/framework/media/zzag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzayt;


# instance fields
.field private synthetic zzauA:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzauA:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p4, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast p4, Lorg/json/JSONObject;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzauA:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    move-object p4, v0

    goto :goto_0
.end method

.method public final zzx(J)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzauA:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzauA:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x837

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
