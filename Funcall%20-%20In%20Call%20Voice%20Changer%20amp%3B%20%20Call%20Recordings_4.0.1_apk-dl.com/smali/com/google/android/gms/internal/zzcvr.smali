.class final Lcom/google/android/gms/internal/zzcvr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzbIC:Lcom/google/android/gms/internal/zzcvq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcvq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcvr;->zzbIC:Lcom/google/android/gms/internal/zzcvq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvr;->zzbIC:Lcom/google/android/gms/internal/zzcvq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvq;->zza(Lcom/google/android/gms/internal/zzcvq;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcvr;->zzbIC:Lcom/google/android/gms/internal/zzcvq;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcvq;->zza(Lcom/google/android/gms/internal/zzcvq;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Invoke the launch activity for package name: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvr;->zzbIC:Lcom/google/android/gms/internal/zzcvq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvq;->zza(Lcom/google/android/gms/internal/zzcvq;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "No launch activity found for package name: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
