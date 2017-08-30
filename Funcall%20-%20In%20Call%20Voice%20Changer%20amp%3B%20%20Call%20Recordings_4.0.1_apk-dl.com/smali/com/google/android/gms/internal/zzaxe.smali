.class public abstract Lcom/google/android/gms/internal/zzaxe;
.super Lcom/google/android/gms/internal/zzaxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaxg",
        "<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaxd:Lcom/google/android/gms/internal/zzawy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzawy;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxe;->zzaxd:Lcom/google/android/gms/internal/zzawy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxg;-><init>(Lcom/google/android/gms/internal/zzawy;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaxf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaxf;-><init>(Lcom/google/android/gms/internal/zzaxe;Lcom/google/android/gms/internal/zzawy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaxe;->zzarw:Lcom/google/android/gms/internal/zzayt;

    return-void
.end method

.method public static zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;
    .locals 7

    const/4 v3, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzaxk;

    const-wide/16 v4, -0x1

    move-object v2, p0

    move-object v6, v3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaxk;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaxe;->zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object v0

    return-object v0
.end method
