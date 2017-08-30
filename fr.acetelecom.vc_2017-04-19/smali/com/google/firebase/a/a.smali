.class public final Lcom/google/firebase/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/a/a$c;,
        Lcom/google/firebase/a/a$b;,
        Lcom/google/firebase/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzaue;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/a/a;->a:Lcom/google/android/gms/internal/zzaue;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/firebase/a/a;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaue;->zzbM(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMw()Lcom/google/firebase/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/a/a;->a:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMv()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/a/a;->a:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMv()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
