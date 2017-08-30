.class public final Lcom/google/android/gms/internal/zzcbk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/ActivityCompat;


# instance fields
.field private final zzbhp:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcbk;->zzbhp:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final getCallingActivity()Landroid/content/ComponentName;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbk;->zzbhp:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.instantapps.supervisor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbk;->zzbhp:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcbp;->zzbf(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcbp;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcbp;->zzdu(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "IAActivityCompat"

    const-string v3, "Error getting calling activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getCallingPackage()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcbk;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
