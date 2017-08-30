.class public abstract Lcom/google/android/gms/awareness/fence/FenceState;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final FALSE:I = 0x1

.field public static final TRUE:I = 0x2

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method public static extract(Landroid/content/Intent;)Lcom/google/android/gms/awareness/fence/FenceState;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbjd;

    const-string v1, "context_fence_current_state"

    invoke-virtual {p0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "context_fence_last_updated_time"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "context_fence_key"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context_fence_previous_state"

    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbjd;-><init>(IJLjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public abstract getCurrentState()I
.end method

.method public abstract getFenceKey()Ljava/lang/String;
.end method

.method public abstract getLastFenceUpdateTimeMillis()J
.end method

.method public abstract getPreviousState()I
.end method
