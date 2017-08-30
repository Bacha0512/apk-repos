.class final Lcom/google/android/gms/auth/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/zzi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/zzi",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/auth/AccountChangeEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzakr:Ljava/lang/String;

.field private synthetic zzaks:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/zzg;->zzakr:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/auth/zzg;->zzaks:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzy(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeh;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    invoke-direct {v1}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/auth/zzg;->zzakr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/auth/zzg;->zzaks:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->setEventIndex(I)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/zzd;->zzm(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->getEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
