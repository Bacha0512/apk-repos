.class public final Lcom/google/android/gms/internal/lp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/AuthResult;


# instance fields
.field private zzbXF:Lcom/google/android/gms/internal/ls;

.field private zzbXG:Lcom/google/android/gms/internal/lo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ls;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/internal/ls;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ls;

    iput-object v0, p0, Lcom/google/android/gms/internal/lp;->zzbXF:Lcom/google/android/gms/internal/ls;

    iget-object v0, p0, Lcom/google/android/gms/internal/lp;->zzbXF:Lcom/google/android/gms/internal/ls;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ls;->zzEY()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lp;->zzbXG:Lcom/google/android/gms/internal/lo;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lq;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/lo;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lq;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lq;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/lo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/lp;->zzbXG:Lcom/google/android/gms/internal/lo;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lp;->zzbXG:Lcom/google/android/gms/internal/lo;

    return-object v0
.end method

.method public final getUser()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lp;->zzbXF:Lcom/google/android/gms/internal/ls;

    return-object v0
.end method
