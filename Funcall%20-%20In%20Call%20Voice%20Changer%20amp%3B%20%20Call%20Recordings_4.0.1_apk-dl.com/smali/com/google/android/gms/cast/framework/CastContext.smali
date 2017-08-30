.class public final Lcom/google/android/gms/cast/framework/CastContext;
.super Ljava/lang/Object;


# static fields
.field public static final OPTIONS_PROVIDER_CLASS_NAME_KEY:Ljava/lang/String; = "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

.field private static final zzarK:Lcom/google/android/gms/internal/zzayo;

.field private static zzarL:Lcom/google/android/gms/cast/framework/CastContext;


# instance fields
.field private final zzarM:Landroid/content/Context;

.field private final zzarN:Lcom/google/android/gms/cast/framework/zzk;

.field private final zzarO:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzarP:Lcom/google/android/gms/cast/framework/zze;

.field private final zzarQ:Lcom/google/android/gms/cast/framework/CastOptions;

.field private zzarR:Lcom/google/android/gms/internal/zzavb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzayo;

    const-string v1, "CastContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzayo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzarK:Lcom/google/android/gms/internal/zzayo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/cast/framework/CastOptions;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/framework/SessionProvider;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarM:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarQ:Lcom/google/android/gms/cast/framework/CastOptions;

    new-instance v0, Lcom/google/android/gms/internal/zzavb;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarM:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzavb;-><init>(Landroid/support/v7/media/MediaRouter;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarR:Lcom/google/android/gms/internal/zzavb;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzauk;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarM:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarR:Lcom/google/android/gms/internal/zzavb;

    invoke-direct {v0, v1, p2, v6}, Lcom/google/android/gms/internal/zzauk;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzavb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauk;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauk;->zznH()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/SessionProvider;

    const-string v1, "Additional SessionProvider must not be null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v7, "Category for SessionProvider must not be null or empty string."

    invoke-static {v1, v7}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    const-string v8, "SessionProvider for category %s already added"

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v7, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionProvider;->zznH()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarM:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarR:Lcom/google/android/gms/internal/zzavb;

    invoke-static {v0, p2, v1, v5}, Lcom/google/android/gms/internal/zzauj;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzauo;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarN:Lcom/google/android/gms/cast/framework/zzk;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarN:Lcom/google/android/gms/cast/framework/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzk;->zznt()Lcom/google/android/gms/cast/framework/zzq;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_2
    if-nez v1, :cond_2

    move-object v0, v4

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarP:Lcom/google/android/gms/cast/framework/zze;

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarN:Lcom/google/android/gms/cast/framework/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzk;->zzns()Lcom/google/android/gms/cast/framework/zzw;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_4
    if-nez v0, :cond_3

    :goto_5
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarO:Lcom/google/android/gms/cast/framework/SessionManager;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v5, "Unable to call %s on %s."

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "getDiscoveryManagerImpl"

    aput-object v7, v6, v3

    const-class v7, Lcom/google/android/gms/cast/framework/zzk;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/android/gms/cast/framework/zze;

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/framework/zze;-><init>(Lcom/google/android/gms/cast/framework/zzq;)V

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v5, "Unable to call %s on %s."

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "getSessionManagerImpl"

    aput-object v7, v6, v3

    const-class v3, Lcom/google/android/gms/cast/framework/zzk;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_4

    :cond_3
    new-instance v4, Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-direct {v4, v0}, Lcom/google/android/gms/cast/framework/SessionManager;-><init>(Lcom/google/android/gms/cast/framework/zzw;)V

    goto :goto_5
.end method

.method public static getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzarL:Lcom/google/android/gms/cast/framework/CastContext;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->zzak(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getCastOptions(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/cast/framework/CastContext;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;)V

    sput-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzarL:Lcom/google/android/gms/cast/framework/CastContext;

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzarL:Lcom/google/android/gms/cast/framework/CastContext;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/cast/framework/CastSession;DZ)Z
    .locals 7

    const/4 v5, 0x1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastSession;->getVolume()D

    move-result-wide v2

    add-double/2addr v2, p1

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/framework/CastSession;->setVolume(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return v5

    :catch_0
    move-exception v0

    :goto_2
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "Unable to call CastSession.setVolume(double)."

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private static zzak(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to initialize CastContext."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/OptionsProvider;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final addAppVisibilityListener(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarN:Lcom/google/android/gms/cast/framework/zzk;

    new-instance v1, Lcom/google/android/gms/cast/framework/zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/zza;-><init>(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzk;->zza(Lcom/google/android/gms/cast/framework/zzf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "addVisibilityChangeListener"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzk;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarO:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/SessionManager;->addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    return-void
.end method

.method public final getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarQ:Lcom/google/android/gms/cast/framework/CastOptions;

    return-object v0
.end method

.method public final getCastState()I
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarO:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCastState()I

    move-result v0

    return v0
.end method

.method public final getMergedSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarN:Lcom/google/android/gms/cast/framework/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzk;->zznr()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getMergedSelectorAsBundle"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzk;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarO:Lcom/google/android/gms/cast/framework/SessionManager;

    return-object v0
.end method

.method public final isAppVisible()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Must be called from the main thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarN:Lcom/google/android/gms/cast/framework/zzk;

    invoke-interface {v1}, Lcom/google/android/gms/cast/framework/zzk;->isAppVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/android/gms/cast/framework/CastContext;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v3, "Unable to call %s on %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "isApplicationVisible"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    const-class v6, Lcom/google/android/gms/cast/framework/zzk;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onDispatchVolumeKeyEventBeforeJellyBean(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzrZ()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarO:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getVolumeDeltaBeforeIceCreamSandwich()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v3, v4, v5, v0}, Lcom/google/android/gms/cast/framework/CastContext;->zza(Lcom/google/android/gms/cast/framework/CastSession;DZ)Z

    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :pswitch_1
    neg-double v4, v4

    invoke-static {v3, v4, v5, v0}, Lcom/google/android/gms/cast/framework/CastContext;->zza(Lcom/google/android/gms/cast/framework/CastSession;DZ)Z

    move v2, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final registerLifecycleCallbacksBeforeIceCreamSandwich(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final removeAppVisibilityListener(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarN:Lcom/google/android/gms/cast/framework/zzk;

    new-instance v1, Lcom/google/android/gms/cast/framework/zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/zza;-><init>(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzk;->zzb(Lcom/google/android/gms/cast/framework/zzf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "addVisibilityChangeListener"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzk;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final removeCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarO:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/SessionManager;->removeCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    goto :goto_0
.end method

.method public final zzno()Lcom/google/android/gms/cast/framework/zze;
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarP:Lcom/google/android/gms/cast/framework/zze;

    return-object v0
.end method

.method public final zznp()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzarN:Lcom/google/android/gms/cast/framework/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzk;->zznu()Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getWrappedThis"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzk;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
