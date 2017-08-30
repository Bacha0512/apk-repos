.class public Lorg/abtollc/utils/PreferencesWrapper;
.super Ljava/lang/Object;
.source "PreferencesWrapper.java"


# static fields
.field public static final BACKUP_PREFIX:Ljava/lang/String; = "backup_"

.field private static final BOOLEAN_PREFS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODECS_LIST:Ljava/lang/String; = "codecs_list"

.field public static final CODECS_SEPARATOR:Ljava/lang/String; = "|"

.field public static final CODECS_VIDEO_LIST:Ljava/lang/String; = "codecs_video_list"

.field private static final CONFIG_FOLDER:Ljava/lang/String; = "configs"

.field private static final CURRENT_API_LEVEL:I

.field private static final FLOAT_PREFS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final HAS_ALREADY_SETUP:Ljava/lang/String; = "has_already_setup"

.field public static final HAS_ALREADY_SETUP_SERVICE:Ljava/lang/String; = "has_already_setup_service"

.field public static final HAS_BEEN_QUIT:Ljava/lang/String; = "has_been_quit"

.field public static final IS_ADVANCED_USER:Ljava/lang/String; = "is_advanced_user"

.field public static final LAST_KNOWN_ANDROID_VERSION_PREF:Ljava/lang/String; = "last_known_aos_version"

.field public static final LAST_KNOWN_VERSION_PREF:Ljava/lang/String; = "last_known_version"

.field public static final LIB_CAP_SRTP:Ljava/lang/String; = "cap_srtp"

.field public static final LIB_CAP_TLS:Ljava/lang/String; = "cap_tls"

.field private static final LOGS_FOLDER:Ljava/lang/String; = "logs"

.field private static final RECORDS_FOLDER:Ljava/lang/String; = "records"

.field public static final STRING_PREFS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final THIS_FILE:Ljava/lang/String; = "PreferencesWrapper"

.field private static final ZRTP_FOLDER:Ljava/lang/String; = "zrtp"


# instance fields
.field private context:Landroid/content/Context;

.field private prefs:Landroid/content/SharedPreferences;

.field private resolver:Landroid/content/ContentResolver;

.field private sharedEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lorg/abtollc/utils/PreferencesWrapper;->CURRENT_API_LEVEL:I

    .line 41
    new-instance v0, Lorg/abtollc/utils/PreferencesWrapper$1;

    invoke-direct {v0}, Lorg/abtollc/utils/PreferencesWrapper$1;-><init>()V

    sput-object v0, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    .line 119
    new-instance v0, Lorg/abtollc/utils/PreferencesWrapper$2;

    invoke-direct {v0}, Lorg/abtollc/utils/PreferencesWrapper$2;-><init>()V

    sput-object v0, Lorg/abtollc/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    .line 202
    new-instance v0, Lorg/abtollc/utils/PreferencesWrapper$3;

    invoke-direct {v0}, Lorg/abtollc/utils/PreferencesWrapper$3;-><init>()V

    sput-object v0, Lorg/abtollc/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lorg/abtollc/utils/PreferencesWrapper;->context:Landroid/content/Context;

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 218
    .local v0, "apiLevel":I
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 219
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->context:Landroid/content/Context;

    const-string v2, "org.abtollc.prefs"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    .line 222
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->resolver:Landroid/content/ContentResolver;

    .line 224
    const-string v1, "log_file_folder"

    const-string v2, "%1$s/.%2$s"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->context:Landroid/content/Context;

    const-string v2, "org.abtollc.prefs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method private applyPrefs()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    :cond_0
    return-void
.end method

.method public static cleanLogsFiles(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 701
    invoke-static {p0}, Lorg/abtollc/utils/PreferencesWrapper;->getLogsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 702
    .local v2, "logsFolder":Ljava/io/File;
    if-eqz v2, :cond_1

    .line 703
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 704
    .local v1, "files":[Ljava/io/File;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 705
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 706
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 704
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static gPrefBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "aPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/Boolean;

    .prologue
    .line 331
    if-nez p0, :cond_0

    .line 332
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 340
    :goto_0
    return-object v0

    .line 334
    :cond_0
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_1
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 340
    goto :goto_0
.end method

.method public static gPrefClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 358
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const-class v0, Ljava/lang/String;

    .line 365
    :goto_0
    return-object v0

    .line 360
    :cond_0
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 362
    :cond_1
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    const-class v0, Ljava/lang/Float;

    goto :goto_0

    .line 365
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static gPrefFloatValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1
    .param p0, "aPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/Float;

    .prologue
    .line 345
    if-nez p0, :cond_0

    .line 346
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 354
    :goto_0
    return-object v0

    .line 348
    :cond_0
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 354
    goto :goto_0
.end method

.method private static gPrefStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 320
    if-nez p0, :cond_0

    .line 321
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    :goto_0
    return-object v0

    .line 323
    :cond_0
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    sget-object v0, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConfigFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 685
    const-string v0, "configs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLogsFile(Landroid/content/Context;Z)Ljava/io/File;
    .locals 6
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "isPjsip"    # Z

    .prologue
    .line 493
    invoke-static {p0}, Lorg/abtollc/utils/PreferencesWrapper;->getLogsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 494
    .local v1, "dir":Ljava/io/File;
    const/4 v3, 0x0

    .line 495
    .local v3, "outFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 496
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 497
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    .local v2, "fileName":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 499
    const-string v4, "pjsip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    :cond_0
    const-string v4, "logs_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    const-string v4, "yy-MM-dd_kkmmss"

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 503
    const-string v4, ".txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    new-instance v3, Ljava/io/File;

    .end local v3    # "outFile":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 505
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "fileName":Ljava/lang/StringBuffer;
    .restart local v3    # "outFile":Ljava/io/File;
    :cond_1
    return-object v3
.end method

.method public static getLogsFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 693
    const-string v0, "logs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordsFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 689
    const-string v0, "records"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getStorageFolder(Landroid/content/Context;Z)Ljava/io/File;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "preferCache"    # Z

    .prologue
    .line 655
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 656
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 657
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 660
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 661
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 662
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 664
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 665
    const-string v2, "PreferencesWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v0    # "dir":Ljava/io/File;
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .locals 4
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "subFolder"    # Ljava/lang/String;
    .param p2, "preferCache"    # Z

    .prologue
    .line 674
    invoke-static {p0, p2}, Lorg/abtollc/utils/PreferencesWrapper;->getStorageFolder(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    .line 675
    .local v1, "root":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 676
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 681
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getZrtpFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 697
    const-string v0, "zrtp"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private hasStunServer(Ljava/lang/String;)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 569
    const-string v3, "stun_server"

    invoke-virtual {p0, v3}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    .line 570
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "servers":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 572
    .local v0, "server":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 573
    const/4 v2, 0x1

    .line 577
    .end local v0    # "server":Ljava/lang/String;
    :cond_0
    return v2

    .line 571
    .restart local v0    # "server":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addStunServer(Ljava/lang/String;)V
    .locals 5
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lorg/abtollc/utils/PreferencesWrapper;->hasStunServer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    const-string v1, "stun_server"

    invoke-virtual {p0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "oldStuns":Ljava/lang/String;
    const-string v2, "PreferencesWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old stun > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    const-string v4, "stun_server"

    .line 585
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v2, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    const-string v2, "stun_server"

    .line 587
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    const-string v0, ""

    .line 593
    :goto_0
    const-string v1, "stun_server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .end local v0    # "oldStuns":Ljava/lang/String;
    :cond_0
    return-void

    .line 590
    .restart local v0    # "oldStuns":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dialPressTone()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 603
    const-string v3, "dial_press_tone_mode"

    invoke-virtual {p0, v3}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    .line 604
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 615
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 606
    :pswitch_1
    iget-object v3, p0, Lorg/abtollc/utils/PreferencesWrapper;->resolver:Landroid/content/ContentResolver;

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 611
    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dialPressVibrate()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 619
    const-string v3, "dial_press_vibrate_mode"

    invoke-virtual {p0, v3}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    .line 620
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 631
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 622
    :pswitch_1
    iget-object v3, p0, Lorg/abtollc/utils/PreferencesWrapper;->resolver:Landroid/content/ContentResolver;

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 627
    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public endEditing()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 248
    sget v0, Lorg/abtollc/utils/PreferencesWrapper;->CURRENT_API_LEVEL:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 249
    invoke-direct {p0}, Lorg/abtollc/utils/PreferencesWrapper;->applyPrefs()V

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    .line 253
    :cond_1
    return-void
.end method

.method public getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 3
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-static {p1, p2}, Lorg/abtollc/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 754
    invoke-virtual {p0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "codecPriority":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 756
    move-object v0, p3

    .line 758
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    .line 760
    .end local v0    # "codecPriority":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGsmIntegrationType()I
    .locals 6

    .prologue
    .line 639
    const/4 v2, 0x1

    .line 640
    .local v2, "prefsValue":I
    const-string v3, "gsm_integration_type"

    invoke-virtual {p0, v3}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "gsmType":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 646
    :goto_0
    return v2

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "PreferencesWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gsm type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not well formated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLibCapability(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cap"    # Ljava/lang/String;

    .prologue
    .line 737
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/abtollc/utils/PreferencesWrapper;->gPrefBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceBooleanValue(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/Boolean;

    .prologue
    .line 395
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lorg/abtollc/utils/PreferencesWrapper;->gPrefBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/abtollc/utils/PreferencesWrapper;->gPrefFloatValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceFloatValue(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/Float;

    .prologue
    .line 410
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lorg/abtollc/utils/PreferencesWrapper;->gPrefFloatValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceIntegerValue(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 422
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 426
    :goto_1
    return v1

    .line 422
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "PreferencesWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format : expect a int"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public getPreferenceIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/Integer;

    .prologue
    .line 431
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 435
    :goto_1
    return v1

    .line 431
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "PreferencesWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format : expect a int"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lorg/abtollc/utils/PreferencesWrapper;->gPrefStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lorg/abtollc/utils/PreferencesWrapper;->gPrefStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCodecList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 782
    const-string v1, "codecs_video_list"

    invoke-virtual {p0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "codecsList":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 784
    const-string v0, ""

    .line 786
    :cond_0
    const-string v1, "|"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public resetAllDefaultValues()V
    .locals 3

    .prologue
    .line 442
    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 443
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    .restart local v0    # "key":Ljava/lang/String;
    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    goto :goto_1

    .line 448
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    .restart local v0    # "key":Ljava/lang/String;
    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    goto :goto_2

    .line 451
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lorg/abtollc/utils/Compatibility;->setFirstRunParameters(Lorg/abtollc/utils/PreferencesWrapper;)V

    .line 452
    const-string v1, "has_already_setup_service"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 454
    return-void
.end method

.method public restoreSipSettings(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jsonSipSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 519
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->startEditing()V

    .line 520
    sget-object v4, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 522
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "val":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 524
    invoke-virtual {p0, v1, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    .end local v3    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to get preference "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    sget-object v4, Lorg/abtollc/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 532
    .restart local v1    # "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 533
    .local v3, "val":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 534
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v1, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 536
    .end local v3    # "val":Ljava/lang/Boolean;
    :catch_1
    move-exception v0

    .line 537
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to get preference "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 540
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    sget-object v4, Lorg/abtollc/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    .restart local v1    # "key":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 543
    .local v3, "val":Ljava/lang/Double;
    if-eqz v3, :cond_4

    .line 544
    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v5

    invoke-virtual {p0, v1, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 550
    .end local v3    # "val":Ljava/lang/Double;
    :cond_4
    :goto_3
    invoke-virtual {p0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;

    goto :goto_2

    .line 546
    :catch_2
    move-exception v0

    .line 547
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to get preference "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 556
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v4, "last_known_version"

    .line 557
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 556
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 558
    .local v2, "lastSeenVersion":Ljava/lang/Integer;
    if-eqz v2, :cond_6

    .line 559
    iget-object v4, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "last_known_version"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 565
    .end local v2    # "lastSeenVersion":Ljava/lang/Integer;
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->endEditing()V

    .line 566
    return-void

    .line 561
    :catch_3
    move-exception v0

    .line 562
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v4, "PreferencesWrapper"

    const-string v5, "Not able to add last known version pref"

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public serializeSipSettings()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 457
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 458
    .local v1, "jsonSipSettings":Lorg/json/JSONObject;
    sget-object v4, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 460
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to add preference "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    sget-object v4, Lorg/abtollc/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 467
    .restart local v2    # "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 468
    :catch_1
    move-exception v0

    .line 469
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to add preference "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 472
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    sget-object v4, Lorg/abtollc/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    .restart local v2    # "key":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, v2}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 475
    invoke-virtual {v5}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    .line 474
    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 476
    :catch_2
    move-exception v0

    .line 477
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to add preference "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 483
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "last_known_version"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 485
    .local v3, "lastSeenVersion":I
    :try_start_3
    const-string v4, "last_known_version"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 489
    :goto_3
    return-object v1

    .line 486
    :catch_3
    move-exception v0

    .line 487
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v4, "PreferencesWrapper"

    const-string v5, "Not able to add last known version pref"

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    .line 764
    invoke-static {p1, p2}, Lorg/abtollc/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0, v0, p3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :cond_0
    return-void
.end method

.method public setPreferenceBooleanValue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 286
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_1

    .line 287
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 289
    sget v1, Lorg/abtollc/utils/PreferencesWrapper;->CURRENT_API_LEVEL:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 290
    invoke-direct {p0}, Lorg/abtollc/utils/PreferencesWrapper;->applyPrefs()V

    .line 291
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setPreferenceFloatValue(Ljava/lang/String;F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 306
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_1

    .line 307
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 309
    sget v1, Lorg/abtollc/utils/PreferencesWrapper;->CURRENT_API_LEVEL:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 310
    invoke-direct {p0}, Lorg/abtollc/utils/PreferencesWrapper;->applyPrefs()V

    .line 311
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_1

    .line 267
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 268
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    sget v1, Lorg/abtollc/utils/PreferencesWrapper;->CURRENT_API_LEVEL:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 270
    invoke-direct {p0}, Lorg/abtollc/utils/PreferencesWrapper;->applyPrefs()V

    .line 271
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setQuit(Z)V
    .locals 1
    .param p1, "quit"    # Z

    .prologue
    .line 719
    const-string v0, "has_been_quit"

    invoke-virtual {p0, v0, p1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 720
    return-void
.end method

.method public startEditing()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    .line 235
    return-void
.end method

.method public startIsDigit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 635
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "start_with_text_dialer"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
