.class final Lcom/google/android/gms/internal/hr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbUv:Lcom/google/android/gms/internal/hp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hr;->zzbUv:Lcom/google/android/gms/internal/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->zzbUv:Lcom/google/android/gms/internal/hp;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/hp;->doFrame(J)V

    return-void
.end method
