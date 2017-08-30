.class public final Lcom/google/android/gms/internal/bt;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcwa;",
            "[",
            "Lcom/google/android/gms/internal/dp",
            "<*>;)",
            "Lcom/google/android/gms/internal/dp",
            "<*>;"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-eq v0, v5, :cond_0

    array-length v0, p2

    if-ne v0, v6, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v3

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v4

    array-length v0, p2

    if-ge v0, v6, :cond_2

    move v2, v1

    :goto_1
    const/16 v0, 0x40

    if-eqz v2, :cond_3

    const/16 v0, 0x42

    move v2, v0

    :goto_2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ds;

    invoke-static {v4, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "true"

    aget-object v2, p2, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ds;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_3
    move v2, v0

    goto :goto_2
.end method
