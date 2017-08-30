.class final Lcom/google/android/gms/internal/zzaxa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# instance fields
.field private synthetic zzaxe:Lcom/google/android/gms/internal/zzawz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxe:Lcom/google/android/gms/internal/zzawz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxa;->zzaxe:Lcom/google/android/gms/internal/zzawz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzawz;->zzaxd:Lcom/google/android/gms/internal/zzawy;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzawy;->zzch(Ljava/lang/String;)V

    return-void
.end method
