.class final Lcom/google/android/gms/internal/zzalz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzafC:I

.field private synthetic zzafD:Lcom/google/android/gms/internal/zzaly;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaly;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalz;->zzafD:Lcom/google/android/gms/internal/zzaly;

    iput p2, p0, Lcom/google/android/gms/internal/zzalz;->zzafC:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalz;->zzafD:Lcom/google/android/gms/internal/zzaly;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaly;->zza(Lcom/google/android/gms/internal/zzaly;)Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzalz;->zzafC:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzamv;->zzr(J)V

    return-void
.end method
