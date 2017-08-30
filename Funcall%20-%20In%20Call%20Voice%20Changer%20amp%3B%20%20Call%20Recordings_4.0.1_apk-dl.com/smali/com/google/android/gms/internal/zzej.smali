.class public final Lcom/google/android/gms/internal/zzej;
.super Ljava/lang/Object;


# static fields
.field private static zzrG:Lcom/google/android/gms/internal/zzej;

.field private static zzrH:Lcom/google/android/gms/internal/zzek;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzej;

    const-string v1, "@@ContextManagerNullAccount@@"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzej;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzej;->zzrG:Lcom/google/android/gms/internal/zzej;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzej;->zzrH:Lcom/google/android/gms/internal/zzek;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzej;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzej;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzej;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzej;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzej;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "#account#"

    return-object v0
.end method
