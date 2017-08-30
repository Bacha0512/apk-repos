.class public final Lcom/google/android/gms/auth/api/signin/internal/zze;
.super Ljava/lang/Object;


# static fields
.field private static zzaml:Lcom/google/android/gms/internal/zzbgb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbgb;

    const-string v1, "GoogleSignInCommon"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgb;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzaml:Lcom/google/android/gms/internal/zzbgb;

    return-void
.end method

.method public static getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "googleSignInStatus"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "googleSignInAccount"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "googleSignInAccount"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v1, "googleSignInStatus"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    :cond_2
    new-instance v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 5

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzaml:Lcom/google/android/gms/internal/zzbgb;

    const-string v1, "GoogleSignInCommon"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getSignInIntent()"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgb;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "config"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/common/api/OptionalPendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ")",
            "Lcom/google/android/gms/common/api/OptionalPendingResult",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzy;->zzaj(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzy;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzaml:Lcom/google/android/gms/internal/zzbgb;

    const-string v4, "GoogleSignInCommon"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "getEligibleSavedSignInResult()"

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzbgb;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/signin/internal/zzy;->zzmO()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    if-nez v0, :cond_2

    if-nez v5, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmB()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isIdTokenRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isIdTokenRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmA()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmA()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/signin/internal/zzy;->zzmN()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzmw()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    sget-object v5, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    if-eqz v0, :cond_4

    sget-object v3, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzaml:Lcom/google/android/gms/internal/zzbgb;

    const-string v4, "GoogleSignInCommon"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Eligible saved sign in result found"

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzbgb;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lcom/google/android/gms/common/api/PendingResults;->zzb(Lcom/google/android/gms/common/api/Result;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzaml:Lcom/google/android/gms/internal/zzbgb;

    const-string v4, "GoogleSignInCommon"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "trySilentSignIn()"

    aput-object v5, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/internal/zzbgb;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzf;

    invoke-direct {v0, p0, v3, p2}, Lcom/google/android/gms/auth/api/signin/internal/zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/signin/internal/zzy;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzbec;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbec;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    goto :goto_2
.end method

.method public static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzaml:Lcom/google/android/gms/internal/zzbgb;

    const-string v1, "GoogleSignInCommon"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Signing out"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgb;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzai(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method

.method private static zzai(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzy;->zzaj(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzy;->zzmP()V

    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzpk()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzpl()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbdb;->zzql()V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzaml:Lcom/google/android/gms/internal/zzbgb;

    const-string v1, "GoogleSignInCommon"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Revoking access"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgb;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzai(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method
