.class public final Lcom/google/android/gms/internal/zzes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "W::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzrM:Landroid/os/Looper;

.field private final zzrN:Lcom/google/android/gms/internal/zzet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzet",
            "<T",
            "L;",
            "TW;>;"
        }
    .end annotation
.end field

.field private final zzrO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<T",
            "L;",
            "TW;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/internal/zzet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzet",
            "<T",
            "L;",
            "TW;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzes;->zzrM:Landroid/os/Looper;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzes;->zzrN:Lcom/google/android/gms/internal/zzet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzes;->zzrO:Ljava/util/HashMap;

    return-void
.end method
