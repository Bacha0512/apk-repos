.class public final Lcom/google/android/gms/internal/zzbui;
.super Ljava/lang/Object;


# static fields
.field private static zzaVq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/zzbui;->zzaVq:I

    return-void
.end method

.method public static zzaU(Landroid/content/Context;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Lcom/google/android/gms/internal/zzbui;->zzaVq:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/util/zzj;->zzaG(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    sput v0, Lcom/google/android/gms/internal/zzbui;->zzaVq:I

    :cond_0
    :goto_0
    sget v0, Lcom/google/android/gms/internal/zzbui;->zzaVq:I

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.tv"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.hardware.type.television"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    sput v0, Lcom/google/android/gms/internal/zzbui;->zzaVq:I

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/util/zzj;->zza(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbui;->zzaV(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    :goto_2
    if-eqz v2, :cond_6

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/zzbui;->zzaVq:I

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "glass_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    if-eqz v0, :cond_8

    const/4 v0, 0x6

    sput v0, Lcom/google/android/gms/internal/zzbui;->zzaVq:I

    goto :goto_0

    :cond_8
    sput v1, Lcom/google/android/gms/internal/zzbui;->zzaVq:I

    goto :goto_0
.end method

.method private static zzaV(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Fitness"

    const-string v3, "Unable to determine type of device, assuming phone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method
