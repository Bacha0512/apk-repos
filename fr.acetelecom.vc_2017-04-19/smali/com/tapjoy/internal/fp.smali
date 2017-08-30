.class public final Lcom/tapjoy/internal/fp;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static d:Lcom/tapjoy/internal/fp;


# instance fields
.field public final b:Lcom/tapjoy/internal/gd$z$a;

.field final c:Lcom/tapjoy/internal/fw;

.field private final e:Lcom/tapjoy/internal/gd$l$a;

.field private final f:Lcom/tapjoy/internal/gd$a$a;

.field private final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fp;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/fw;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tapjoy/internal/ga;->a()V

    invoke-static {}, Lcom/tapjoy/internal/gd$l;->J()Lcom/tapjoy/internal/gd$l$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    invoke-static {}, Lcom/tapjoy/internal/gd$a;->n()Lcom/tapjoy/internal/gd$a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->N()Lcom/tapjoy/internal/gd$z$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    const-string v1, "11.8.2/Android"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$l$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gd$l$a;

    move-result-object v0

    const-string v1, "Android"

    iget v2, v0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v1, v0, Lcom/tapjoy/internal/gd$l$a;->g:Ljava/lang/Object;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v2, v0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v1, v0, Lcom/tapjoy/internal/gd$l$a;->h:Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v2, v0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v1, v0, Lcom/tapjoy/internal/gd$l$a;->e:Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iget v2, v0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v1, v0, Lcom/tapjoy/internal/gd$l$a;->f:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$l$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$l$a;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$l$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gd$l$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/fp;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/tapjoy/internal/w;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lcom/tapjoy/internal/fm;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v4, "deviceid"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    new-instance v0, Ljava/io/File;

    const-string v4, ".io.5rocks"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, v0}, Lcom/tapjoy/internal/aa;->a(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget v3, v2, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v0, v2, Lcom/tapjoy/internal/gd$l$a;->d:Ljava/lang/Object;

    invoke-static {v1}, Lcom/tapjoy/internal/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    iget v3, v2, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v0, v2, Lcom/tapjoy/internal/gd$l$a;->c:Ljava/lang/Object;

    :cond_8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_9
    iget v5, v4, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v3, v4, Lcom/tapjoy/internal/gd$l$a;->k:Ljava/lang/Object;

    :cond_a
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_b
    iget v5, v4, Lcom/tapjoy/internal/gd$l$a;->b:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, v4, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v3, v4, Lcom/tapjoy/internal/gd$l$a;->l:Ljava/lang/Object;

    :cond_c
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_d

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    :cond_d
    :goto_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    if-nez v1, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_e
    :try_start_1
    iget v4, v3, Lcom/tapjoy/internal/gd$l$a;->b:I

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    iput v4, v3, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v0, v3, Lcom/tapjoy/internal/gd$l$a;->m:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_f
    iget v3, v0, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v0, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v1, v0, Lcom/tapjoy/internal/gd$l$a;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/ae;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_10

    array-length v4, v0

    if-lez v4, :cond_10

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cl;->a([B)[B

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    :cond_11
    iget v4, v3, Lcom/tapjoy/internal/gd$l$a;->b:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v3, Lcom/tapjoy/internal/gd$l$a;->b:I

    iput-object v0, v3, Lcom/tapjoy/internal/gd$l$a;->j:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/ae;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_12
    iget v4, v0, Lcom/tapjoy/internal/gd$a$a;->b:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/tapjoy/internal/gd$a$a;->b:I

    iput-object v3, v0, Lcom/tapjoy/internal/gd$a$a;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/ae;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gd$a$a;->a(I)Lcom/tapjoy/internal/gd$a$a;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_13
    iget v4, v3, Lcom/tapjoy/internal/gd$a$a;->b:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lcom/tapjoy/internal/gd$a$a;->b:I

    iput-object v0, v3, Lcom/tapjoy/internal/gd$a$a;->e:Ljava/lang/Object;

    :cond_14
    invoke-static {v2, v1}, Lcom/tapjoy/internal/fp;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_15
    iget v2, v1, Lcom/tapjoy/internal/gd$a$a;->b:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lcom/tapjoy/internal/gd$a$a;->b:I

    iput-object v0, v1, Lcom/tapjoy/internal/gd$a$a;->f:Ljava/lang/Object;

    :cond_16
    invoke-virtual {p0}, Lcom/tapjoy/internal/fp;->a()V

    iput-object p2, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->c:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " 11.8.2/Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$l$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gd$l$a;

    :cond_17
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fw;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    :cond_18
    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v3, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v3, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    const-string v1, "it"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1a

    iget-object v0, v3, Lcom/tapjoy/internal/fw;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/internal/ae;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_19

    iget-object v0, v3, Lcom/tapjoy/internal/fw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/fm;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_19

    new-instance v0, Ljava/io/File;

    iget-object v1, v3, Lcom/tapjoy/internal/fw;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tapjoy/internal/ae;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_19
    iget-object v3, v3, Lcom/tapjoy/internal/fw;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "it"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1a
    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->a(J)Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->f:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/tapjoy/internal/fp;->a(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$z$a;->a(I)Lcom/tapjoy/internal/gd$z$a;

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    const/16 v2, 0x1e

    invoke-static {v2, v0}, Lcom/tapjoy/internal/fp;->a(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->b(I)Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->d(I)Lcom/tapjoy/internal/gd$z$a;

    :cond_1b
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1c

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->b(J)Lcom/tapjoy/internal/gd$z$a;

    :cond_1c
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->j:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->c(J)Lcom/tapjoy/internal/gd$z$a;

    :cond_1d
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->k:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->d(J)Lcom/tapjoy/internal/gd$z$a;

    :cond_1e
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    :cond_1f
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->e(I)Lcom/tapjoy/internal/gd$z$a;

    :cond_20
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k;->a()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->a(D)Lcom/tapjoy/internal/gd$z$a;

    :cond_21
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_22

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->e(J)Lcom/tapjoy/internal/gd$z$a;

    :cond_22
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k;->a()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/gd$z$a;->b(D)Lcom/tapjoy/internal/gd$z$a;

    :cond_23
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v1, 0x2

    :try_start_2
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/gd$u;->a([B)Lcom/tapjoy/internal/gd$u;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    iget v2, v1, Lcom/tapjoy/internal/gd$z$a;->b:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Lcom/tapjoy/internal/gd$z$a;->b:I

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, v0, Lcom/tapjoy/internal/gd$u;->c:Ljava/util/List;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->e()V

    iget-object v1, v1, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/dh$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_24
    :goto_4
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->q:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$a$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$a$a;

    :goto_5
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->r:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    :goto_6
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->s:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->f(I)Lcom/tapjoy/internal/gd$z$a;

    :goto_7
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->t:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->g(I)Lcom/tapjoy/internal/gd$z$a;

    :goto_8
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->u:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    :goto_9
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->v:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->f(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    :goto_a
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->w:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->g(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    :goto_b
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->x:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->h(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    :goto_c
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->y:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->i(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    :goto_d
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v1, 0x2

    :try_start_3
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/gd$x;->a([B)Lcom/tapjoy/internal/gd$x;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->y()Lcom/tapjoy/internal/gd$z$a;

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, v0, Lcom/tapjoy/internal/gd$x;->c:Lcom/tapjoy/internal/ds;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->a(Ljava/lang/Iterable;)Lcom/tapjoy/internal/gd$z$a;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_25
    :goto_e
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->A:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->B:Lcom/tapjoy/internal/j;

    invoke-virtual {v1}, Lcom/tapjoy/internal/j;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/gd$z$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$z$a;->a(Z)Lcom/tapjoy/internal/gd$z$a;

    :goto_f
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->C:Lcom/tapjoy/internal/j;

    invoke-virtual {v1}, Lcom/tapjoy/internal/j;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$z$a;->b(Z)Lcom/tapjoy/internal/gd$z$a;

    new-instance v0, Lcom/tapjoy/internal/fp$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fp$1;-><init>(Lcom/tapjoy/internal/fp;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    goto/16 :goto_4

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    goto/16 :goto_4

    :cond_26
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$a$a;->f()Lcom/tapjoy/internal/gd$a$a;

    goto/16 :goto_5

    :cond_27
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->j()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_6

    :cond_28
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->l()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_7

    :cond_29
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->n()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_8

    :cond_2a
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->p()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_9

    :cond_2b
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->r()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_a

    :cond_2c
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->t()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_b

    :cond_2d
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->v()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_c

    :cond_2e
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->x()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_d

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    goto/16 :goto_e

    :catch_5
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    goto/16 :goto_e

    :cond_2f
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->g()Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->h()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_f
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/fp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tapjoy/internal/fp;
    .locals 3

    const-class v1, Lcom/tapjoy/internal/fp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fp;->d:Lcom/tapjoy/internal/fp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tapjoy/internal/fp;

    invoke-static {p0}, Lcom/tapjoy/internal/fw;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/tapjoy/internal/fp;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/fw;)V

    sput-object v0, Lcom/tapjoy/internal/fp;->d:Lcom/tapjoy/internal/fp;

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fp;->d:Lcom/tapjoy/internal/fp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.tapjoy.appstore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/fw;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/gd$z$a;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    return-object v0
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/tapjoy/internal/gd$u;->e()Lcom/tapjoy/internal/gd$u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v1, v1, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$u$a;->e()V

    iget-object v2, v0, Lcom/tapjoy/internal/gd$u$a;->b:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dh$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$u$a;->d()Lcom/tapjoy/internal/gd$u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$u;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$u;->a()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->g:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/tapjoy/internal/fe;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    iput v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gd$l$a;->a(I)Lcom/tapjoy/internal/gd$l$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gd$l$a;->b(I)Lcom/tapjoy/internal/gd$l$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$l$a;->c(I)Lcom/tapjoy/internal/gd$l$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->s:Lcom/tapjoy/internal/m;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/m;->a(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget v0, v0, Lcom/tapjoy/internal/gd$z$a;->g:I

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gd$z$a;->f(I)Lcom/tapjoy/internal/gd$z$a;

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->k()Z

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->l()Lcom/tapjoy/internal/gd$z$a;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(ILjava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    :try_start_0
    monitor-exit p0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->u:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, v4, Lcom/tapjoy/internal/gd$z$a;->i:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_2

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v3, v4, Lcom/tapjoy/internal/gd$z$a;->i:Ljava/lang/Object;

    :cond_0
    move-object v0, v3

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gd$z$a;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->o()Z

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->p()Lcom/tapjoy/internal/gd$z$a;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->v:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, v4, Lcom/tapjoy/internal/gd$z$a;->j:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_7

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v3, v4, Lcom/tapjoy/internal/gd$z$a;->j:Ljava/lang/Object;

    :cond_5
    move-object v0, v3

    :goto_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    move v0, v2

    :goto_4
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gd$z$a;->f(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    goto :goto_0

    :cond_7
    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->q()Z

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->r()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->w:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->s()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, v4, Lcom/tapjoy/internal/gd$z$a;->k:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_c

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    iput-object v3, v4, Lcom/tapjoy/internal/gd$z$a;->k:Ljava/lang/Object;

    :cond_a
    move-object v0, v3

    :goto_5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move v0, v2

    :goto_6
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gd$z$a;->g(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_0

    :cond_c
    check-cast v0, Ljava/lang/String;

    goto :goto_5

    :cond_d
    move v0, v1

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->s()Z

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->t()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->x:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_13

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->u()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v4, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, v4, Lcom/tapjoy/internal/gd$z$a;->l:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_11

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object v3, v4, Lcom/tapjoy/internal/gd$z$a;->l:Ljava/lang/Object;

    :cond_f
    move-object v0, v3

    :goto_7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    move v0, v2

    :goto_8
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gd$z$a;->h(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_0

    :cond_11
    check-cast v0, Ljava/lang/String;

    goto :goto_7

    :cond_12
    move v0, v1

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->u()Z

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->v()Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->y:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->w()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v4, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, v4, Lcom/tapjoy/internal/gd$z$a;->m:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_16

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    iput-object v3, v4, Lcom/tapjoy/internal/gd$z$a;->m:Ljava/lang/Object;

    :cond_14
    move-object v0, v3

    :goto_9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    move v0, v2

    :goto_a
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/gd$z$a;->i(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    goto/16 :goto_0

    :cond_16
    check-cast v0, Ljava/lang/String;

    goto :goto_9

    :cond_17
    move v0, v1

    goto :goto_a

    :cond_18
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->w()Z

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->x()Lcom/tapjoy/internal/gd$z$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->q:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$a$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    iget-object v0, v2, Lcom/tapjoy/internal/gd$a$a;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, v2, Lcom/tapjoy/internal/gd$a$a;->d:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gd$a$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$a$a;

    :goto_2
    monitor-exit p0

    return v0

    :cond_2
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$a$a;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$a$a;->f()Lcom/tapjoy/internal/gd$a$a;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Ljava/lang/String;JZ)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$z$a;->f()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v4, v2}, Lcom/tapjoy/internal/gd$z$a;->c(I)Lcom/tapjoy/internal/gd$t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/internal/gd$t;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-static {v4}, Lcom/tapjoy/internal/gd$t;->a(Lcom/tapjoy/internal/gd$t;)Lcom/tapjoy/internal/gd$t$a;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/tapjoy/internal/gd$t$a;->a(J)Lcom/tapjoy/internal/gd$t$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->e()V

    iget-object v1, v1, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$t$a;->d()Lcom/tapjoy/internal/gd$t;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tapjoy/internal/fp;->f()V

    monitor-exit p0

    :goto_1
    return v0

    :cond_0
    monitor-exit p0

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-static {}, Lcom/tapjoy/internal/gd$t;->i()Lcom/tapjoy/internal/gd$t$a;

    move-result-object v2

    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget v3, v2, Lcom/tapjoy/internal/gd$t$a;->b:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/tapjoy/internal/gd$t$a;->b:I

    iput-object p1, v2, Lcom/tapjoy/internal/gd$t$a;->c:Ljava/lang/Object;

    invoke-virtual {v2, p2, p3}, Lcom/tapjoy/internal/gd$t$a;->a(J)Lcom/tapjoy/internal/gd$t$a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->e()V

    iget-object v1, v1, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$t$a;->d()Lcom/tapjoy/internal/gd$t;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tapjoy/internal/fp;->f()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Z)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->C:Lcom/tapjoy/internal/j;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/j;->a(Z)V

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-boolean v0, v0, Lcom/tapjoy/internal/gd$z$a;->o:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gd$z$a;->b(Z)Lcom/tapjoy/internal/gd$z$a;

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Lcom/tapjoy/internal/gd$n;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$l$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$l$a;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd$l$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gd$l$a;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/gd$z$a;->c(I)Lcom/tapjoy/internal/gd$t;

    move-result-object v4

    iget-wide v4, v4, Lcom/tapjoy/internal/gd$t;->c:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->e()V

    iget-object v0, v0, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tapjoy/internal/fp;->f()V

    :cond_2
    invoke-static {}, Lcom/tapjoy/internal/gd$n;->h()Lcom/tapjoy/internal/gd$n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->e:Lcom/tapjoy/internal/gd$l$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$l$a;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$l;->c()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iput-object v1, v0, Lcom/tapjoy/internal/gd$n$a;->c:Lcom/tapjoy/internal/gd$l;

    iget v1, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->f:Lcom/tapjoy/internal/gd$a$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$a$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$a;->c()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :cond_4
    iput-object v1, v0, Lcom/tapjoy/internal/gd$n$a;->d:Lcom/tapjoy/internal/gd$a;

    iget v1, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z;->c()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :cond_5
    iput-object v1, v0, Lcom/tapjoy/internal/gd$n$a;->e:Lcom/tapjoy/internal/gd$z;

    iget v1, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/tapjoy/internal/gd$n$a;->b:I

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$n$a;->d()Lcom/tapjoy/internal/gd$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$n;->c()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final b(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->t:Lcom/tapjoy/internal/m;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/m;->a(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget v0, v0, Lcom/tapjoy/internal/gd$z$a;->h:I

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gd$z$a;->g(I)Lcom/tapjoy/internal/gd$z$a;

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->m()Z

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->n()Lcom/tapjoy/internal/gd$z$a;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->r:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, v2, Lcom/tapjoy/internal/gd$z$a;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, v2, Lcom/tapjoy/internal/gd$z$a;->f:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gd$z$a;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    :goto_2
    monitor-exit p0

    return v0

    :cond_2
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->i()Z

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->j()Lcom/tapjoy/internal/gd$z$a;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->d:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->c(I)Lcom/tapjoy/internal/gd$t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/tapjoy/internal/gd$t;->a(Lcom/tapjoy/internal/gd$t;)Lcom/tapjoy/internal/gd$t$a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gd$t$a;->b(J)Lcom/tapjoy/internal/gd$t$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$t$a;->d()Lcom/tapjoy/internal/gd$t;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$z$a;->e()V

    iget-object v2, v2, Lcom/tapjoy/internal/gd$z$a;->c:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tapjoy/internal/fp;->f()V

    const/4 v0, 0x1

    monitor-exit p0

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final d()Lcom/tapjoy/internal/gd$p;
    .locals 15

    const/4 v4, 0x0

    const/16 v12, 0x1e

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x64

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v5, v2, v3

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v2, v2, Lcom/tapjoy/internal/fw;->e:Lcom/tapjoy/internal/m;

    invoke-virtual {v2}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_6

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$z$a;->a(I)Lcom/tapjoy/internal/gd$z$a;

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$z$a;->b(I)Lcom/tapjoy/internal/gd$z$a;

    invoke-static {}, Lcom/tapjoy/internal/gd$p;->k()Lcom/tapjoy/internal/gd$p$a;

    move-result-object v1

    const-string v2, "fq7_0_1"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$p$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$p$a;

    const-string v2, "fq30_0_1"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$p$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gd$p$a;

    :goto_0
    iget-object v2, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v2, v2, Lcom/tapjoy/internal/fw;->e:Lcom/tapjoy/internal/m;

    invoke-virtual {v2, v5}, Lcom/tapjoy/internal/m;->a(I)V

    iget-object v2, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v2, v2, Lcom/tapjoy/internal/fw;->f:Lcom/tapjoy/internal/m;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/m;->a(I)V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$p$a;->d()Lcom/tapjoy/internal/gd$p;

    move-result-object v0

    :goto_1
    monitor-exit p0

    :goto_2
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->f:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v0, 0x7

    invoke-static {v0, v6}, Lcom/tapjoy/internal/fp;->a(II)I

    move-result v7

    const/16 v0, 0x1e

    invoke-static {v0, v6}, Lcom/tapjoy/internal/fp;->a(II)I

    move-result v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    div-int/lit16 v0, v2, 0x2710

    div-int/lit8 v9, v2, 0x64

    rem-int/lit8 v9, v9, 0x64

    add-int/lit8 v9, v9, -0x1

    rem-int/lit8 v2, v2, 0x64

    invoke-virtual {v3, v0, v9, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v12, :cond_3

    move v0, v4

    :goto_4
    or-int/lit8 v0, v0, 0x1

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/tapjoy/internal/fp;->a(II)I

    move-result v2

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/tapjoy/internal/fp;->a(II)I

    move-result v3

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$z$a;->a(I)Lcom/tapjoy/internal/gd$z$a;

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/gd$z$a;->b(I)Lcom/tapjoy/internal/gd$z$a;

    invoke-static {}, Lcom/tapjoy/internal/gd$p;->k()Lcom/tapjoy/internal/gd$p$a;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "fq7_"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$p$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$p$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "fq30_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$p$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gd$p$a;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-wide v13, v2

    move-object v2, v0

    move-wide v0, v13

    :goto_5
    move v3, v4

    :goto_6
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v10, v10, v0

    if-gez v10, :cond_1

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_2
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v10, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-wide v13, v2

    move-object v2, v0

    move-wide v0, v13

    goto :goto_5

    :cond_1
    if-lez v9, :cond_2

    move v0, v3

    goto/16 :goto_3

    :cond_2
    neg-int v0, v3

    goto/16 :goto_3

    :cond_3
    if-ltz v0, :cond_4

    shl-int v0, v6, v0

    goto/16 :goto_4

    :cond_4
    neg-int v0, v0

    shr-int v0, v6, v0

    goto/16 :goto_4

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final e()Ljava/util/Set;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-object v1, v1, Lcom/tapjoy/internal/gd$z$a;->n:Lcom/tapjoy/internal/ds;

    invoke-interface {v1}, Lcom/tapjoy/internal/ds;->b()Lcom/tapjoy/internal/ds;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
