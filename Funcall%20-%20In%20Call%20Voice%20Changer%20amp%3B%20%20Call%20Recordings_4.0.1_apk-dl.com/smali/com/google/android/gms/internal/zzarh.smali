.class final Lcom/google/android/gms/internal/zzarh;
.super Lcom/google/android/gms/internal/zzarn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzarn",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzaly:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarg;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzarh;->zzaly:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzarn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzari;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzari;-><init>(Lcom/google/android/gms/internal/zzarh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarh;->zzaly:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzart;->zza(Lcom/google/android/gms/internal/zzarr;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzarf;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    return-object v0
.end method
