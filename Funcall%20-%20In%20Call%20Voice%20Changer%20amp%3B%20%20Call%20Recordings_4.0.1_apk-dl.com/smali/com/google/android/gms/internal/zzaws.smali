.class final Lcom/google/android/gms/internal/zzaws;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavY:Lcom/google/android/gms/internal/zzawr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaws;->zzavY:Lcom/google/android/gms/internal/zzawr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaws;->zzavY:Lcom/google/android/gms/internal/zzawr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawr;->zza(Lcom/google/android/gms/internal/zzawr;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queuePrev(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method
