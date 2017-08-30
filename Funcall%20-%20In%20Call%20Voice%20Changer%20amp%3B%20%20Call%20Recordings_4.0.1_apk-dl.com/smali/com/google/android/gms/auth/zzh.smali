.class final Lcom/google/android/gms/auth/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/zzi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/zzi",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzako:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/zzh;->zzako:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzy(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeh;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/zzh;->zzako:Landroid/accounts/Account;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeg;->zza(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/zzd;->zzm(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method
