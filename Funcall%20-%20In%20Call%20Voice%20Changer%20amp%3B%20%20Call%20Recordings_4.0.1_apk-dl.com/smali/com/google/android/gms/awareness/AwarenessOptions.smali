.class public Lcom/google/android/gms/awareness/AwarenessOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# static fields
.field public static final NO_UID:I = -0x1


# instance fields
.field private final zzajb:Landroid/accounts/Account;

.field private final zzanK:Ljava/lang/String;

.field private final zzanL:I

.field private final zzanM:Ljava/lang/String;

.field private final zzanN:Ljava/lang/String;

.field private final zzanO:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "moduleId must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanK:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanL:I

    iput-object p3, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanM:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanN:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanO:I

    iput-object p6, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzajb:Landroid/accounts/Account;

    return-void
.end method

.method public static create1p(Ljava/lang/String;)Lcom/google/android/gms/awareness/AwarenessOptions;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/awareness/AwarenessOptions;

    const/4 v2, 0x1

    const/4 v5, -0x1

    move-object v1, p0

    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/awareness/AwarenessOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V

    return-object v0
.end method

.method public static create1p(Ljava/lang/String;Landroid/accounts/Account;)Lcom/google/android/gms/awareness/AwarenessOptions;
    .locals 7

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/awareness/AwarenessOptions;

    const/4 v2, 0x1

    const/4 v5, -0x1

    move-object v1, p0

    move-object v4, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/awareness/AwarenessOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/awareness/AwarenessOptions;

    iget v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanL:I

    iget v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanL:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanO:I

    iget v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanO:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanK:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanK:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanM:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanM:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanN:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanN:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzajb:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzajb:Landroid/accounts/Account;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getAccount()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzajb:Landroid/accounts/Account;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanK:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzajb:Landroid/accounts/Account;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzmQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanK:Ljava/lang/String;

    return-object v0
.end method

.method public final zzmR()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanL:I

    return v0
.end method

.method public final zzmS()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanM:Ljava/lang/String;

    return-object v0
.end method

.method public final zzmT()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanN:Ljava/lang/String;

    return-object v0
.end method

.method public final zzmU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzanO:I

    return v0
.end method
