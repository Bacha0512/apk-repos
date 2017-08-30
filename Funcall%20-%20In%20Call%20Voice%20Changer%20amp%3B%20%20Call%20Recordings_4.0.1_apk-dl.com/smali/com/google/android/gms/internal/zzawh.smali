.class final Lcom/google/android/gms/internal/zzawh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavF:Lcom/google/android/gms/internal/zzawf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawh;->zzavF:Lcom/google/android/gms/internal/zzawf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawh;->zzavF:Lcom/google/android/gms/internal/zzawf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawf;->zzb(Lcom/google/android/gms/internal/zzawf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isMute()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastSession;->setMute(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawh;->zzavF:Lcom/google/android/gms/internal/zzawf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzawf;->zza(Lcom/google/android/gms/internal/zzawf;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastSession;->setMute(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawh;->zzavF:Lcom/google/android/gms/internal/zzawf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzawf;->zza(Lcom/google/android/gms/internal/zzawf;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/zzawf;->zzon()Lcom/google/android/gms/internal/zzayo;

    move-result-object v1

    const-string v2, "Unable to call CastSession.setMute(boolean)."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
