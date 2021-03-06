.class public final Lcom/google/android/gms/internal/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbKT:Lcom/google/android/gms/internal/cc;

.field private final zzbKU:Lcom/google/android/gms/internal/cx;

.field private final zzbKV:Lcom/google/android/gms/internal/cu;

.field private final zzbKt:Lcom/google/android/gms/internal/cl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/cc;)V
    .locals 6

    new-instance v4, Lcom/google/android/gms/internal/cx;

    invoke-direct {v4}, Lcom/google/android/gms/internal/cx;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/cu;

    invoke-direct {v5}, Lcom/google/android/gms/internal/cu;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cu;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/cy;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cc;

    iput-object v0, p0, Lcom/google/android/gms/internal/cy;->zzbKT:Lcom/google/android/gms/internal/cc;

    iput-object p2, p0, Lcom/google/android/gms/internal/cy;->zzbKt:Lcom/google/android/gms/internal/cl;

    iput-object p4, p0, Lcom/google/android/gms/internal/cy;->zzbKU:Lcom/google/android/gms/internal/cx;

    iput-object p5, p0, Lcom/google/android/gms/internal/cy;->zzbKV:Lcom/google/android/gms/internal/cu;

    return-void
.end method

.method private final zzbv(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cy;->zzbv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Missing android.permission.INTERNET. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->e(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->zzbKT:Lcom/google/android/gms/internal/cc;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/cc;->zzk(II)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cy;->zzbv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Missing android.permission.ACCESS_NETWORK_STATE. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "No network connectivity - Offline"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const-string v0, "Starting to load resource from Network."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/cv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/cv;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->zzbKV:Lcom/google/android/gms/internal/cu;

    iget-object v3, p0, Lcom/google/android/gms/internal/cy;->zzbKt:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cl;->zzCP()Lcom/google/android/gms/internal/bz;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/cu;->zzb(Lcom/google/android/gms/internal/bz;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Loading resource from "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/cw;->zzfU(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/da; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_3
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/util/zzn;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->zzbKT:Lcom/google/android/gms/internal/cc;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cc;->zzv([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/cw;->close()V

    goto :goto_1

    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/cw;->close()V

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "NetworkLoader: No data was retrieved from the given url: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->zzbKT:Lcom/google/android/gms/internal/cc;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/cc;->zzk(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/cw;->close()V

    goto/16 :goto_1

    :cond_6
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v1

    const-string v4, "NetworkLoader: Error when loading resource for url: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Lcom/google/android/gms/internal/zzcvk;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->zzbKT:Lcom/google/android/gms/internal/cc;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/cc;->zzk(II)V

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x36

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "NetworkLoader: Error when loading resource from url: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcvk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->zzbKT:Lcom/google/android/gms/internal/cc;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/cc;->zzk(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/cw;->close()V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x42

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "NetworkLoader: Error when parsing downloaded resources from url: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcvk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->zzbKT:Lcom/google/android/gms/internal/cc;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/cc;->zzk(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/cw;->close()V

    goto/16 :goto_1
.end method
