.class public final Lcom/google/android/gms/nearby/messages/internal/zzak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/Messages;


# static fields
.field public static final zzajR:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzah;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzajS:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzah;",
            "Lcom/google/android/gms/nearby/messages/MessagesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbzi:Lcom/google/android/gms/nearby/messages/internal/zzak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzak;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzbzi:Lcom/google/android/gms/nearby/messages/internal/zzak;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzal;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzajS:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Ljava/lang/Iterable;Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/Update;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/Update;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/nearby/messages/MessageListener;->onFound(Lcom/google/android/gms/nearby/messages/Message;)V

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/nearby/messages/MessageListener;->onLost(Lcom/google/android/gms/nearby/messages/Message;)V

    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbt(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    iget-object v3, v0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzB:Lcom/google/android/gms/nearby/messages/internal/zze;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/nearby/messages/MessageListener;->onDistanceChanged(Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/Distance;)V

    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbt(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    iget-object v3, v0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzC:Lcom/google/android/gms/nearby/messages/internal/zza;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/nearby/messages/MessageListener;->onBleSignalChanged(Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/BleSignal;)V

    :cond_4
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    iget-object v0, v0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzD:Lcom/google/android/gms/internal/zzcpj;

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static zzh(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/nearby/messages/internal/zzah;
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzah;

    return-object v0
.end method


# virtual methods
.method public final getPermissionStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzat;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzat;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method

.method public final handleIntent(Landroid/content/Intent;Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 2

    const-string v0, "com.google.android.gms.nearby.messages.UPDATES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zza(Ljava/lang/Iterable;Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final publish(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/Message;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/nearby/messages/PublishOptions;->DEFAULT:Lcom/google/android/gms/nearby/messages/PublishOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/nearby/messages/internal/zzak;->publish(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/PublishOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final publish(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/PublishOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/Message;",
            "Lcom/google/android/gms/nearby/messages/PublishOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/messages/PublishOptions;->getCallback()Lcom/google/android/gms/nearby/messages/PublishCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_0
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzan;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/zzan;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/nearby/messages/PublishOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/messages/PublishOptions;->getCallback()Lcom/google/android/gms/nearby/messages/PublishCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbdw;

    move-result-object v4

    goto :goto_0
.end method

.method public final registerStatusCallback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/StatusCallback;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzh(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/nearby/messages/internal/zzah;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/StatusCallback;)Lcom/google/android/gms/internal/zzbdw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzau;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzau;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbdw;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->DEFAULT:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/nearby/messages/internal/zzak;->subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/nearby/messages/SubscribeOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getCallback()Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_0
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzaq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/zzaq;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getCallback()Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbdw;

    move-result-object v4

    goto :goto_0
.end method

.method public final subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->DEFAULT:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/nearby/messages/internal/zzak;->subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            "Lcom/google/android/gms/nearby/messages/SubscribeOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/Strategy;->zzzU()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Strategy.setBackgroundScanMode() is only supported by background subscribe (the version which takes a PendingIntent)."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzh(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/nearby/messages/internal/zzah;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/internal/zzbdw;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getCallback()Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzap;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/zzap;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getCallback()Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbdw;

    move-result-object v4

    goto :goto_1
.end method

.method public final unpublish(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/Message;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzao;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzao;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method

.method public final unregisterStatusCallback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/StatusCallback;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzh(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/nearby/messages/internal/zzah;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/nearby/messages/StatusCallback;)Lcom/google/android/gms/internal/zzbdw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzam;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzam;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbdw;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method

.method public final unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzas;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzas;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method

.method public final unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzh(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/nearby/messages/internal/zzah;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/internal/zzbdw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzar;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzar;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbdw;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method
