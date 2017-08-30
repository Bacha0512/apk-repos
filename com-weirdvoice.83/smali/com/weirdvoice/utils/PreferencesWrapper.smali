.class public Lcom/weirdvoice/utils/PreferencesWrapper;
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

.field private static HAS_MANAGED_VERSION_UPGRADE:Z = false

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


# instance fields
.field private context:Landroid/content/Context;

.field private prefs:Landroid/content/SharedPreferences;

.field private resolver:Landroid/content/ContentResolver;

.field private sharedEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/weirdvoice/utils/PreferencesWrapper$1;

    invoke-direct {v0}, Lcom/weirdvoice/utils/PreferencesWrapper$1;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    .line 145
    new-instance v0, Lcom/weirdvoice/utils/PreferencesWrapper$2;

    invoke-direct {v0}, Lcom/weirdvoice/utils/PreferencesWrapper$2;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    .line 231
    new-instance v0, Lcom/weirdvoice/utils/PreferencesWrapper$3;

    invoke-direct {v0}, Lcom/weirdvoice/utils/PreferencesWrapper$3;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    .line 241
    const/4 v0, 0x0

    sput-boolean v0, Lcom/weirdvoice/utils/PreferencesWrapper;->HAS_MANAGED_VERSION_UPGRADE:Z

    .line 769
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->context:Landroid/content/Context;

    .line 245
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->resolver:Landroid/content/ContentResolver;

    .line 250
    sget-boolean v0, Lcom/weirdvoice/utils/PreferencesWrapper;->HAS_MANAGED_VERSION_UPGRADE:Z

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->forceCheckUpgrade()V

    .line 253
    :cond_0
    return-void
.end method

.method public static cleanLogsFiles(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 725
    invoke-static {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getLogsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 726
    .local v2, "logsFolder":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 728
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 729
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 736
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    return-void

    .line 729
    .restart local v1    # "files":[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v3

    .line 730
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 731
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 729
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static gPrefBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "aPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 381
    if-nez p0, :cond_0

    .line 382
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 390
    :goto_0
    return-object v0

    .line 384
    :cond_0
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

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

    .line 387
    :cond_1
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_2
    const/4 v0, 0x0

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
    .line 408
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-class v0, Ljava/lang/String;

    .line 415
    :goto_0
    return-object v0

    .line 410
    :cond_0
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 412
    :cond_1
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    const-class v0, Ljava/lang/Float;

    goto :goto_0

    .line 415
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static gPrefFloatValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "aPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 395
    if-nez p0, :cond_0

    .line 396
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 404
    :goto_0
    return-object v0

    .line 398
    :cond_0
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

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

    .line 401
    :cond_1
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static gPrefStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 370
    if-nez p0, :cond_0

    .line 371
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 376
    :goto_0
    return-object v0

    .line 373
    :cond_0
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    sget-object v0, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConfigFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 690
    const-string v0, "configs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLogsFile(Landroid/content/Context;Z)Ljava/io/File;
    .locals 6
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "isPjsip"    # Z

    .prologue
    .line 702
    invoke-static {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getLogsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 703
    .local v1, "dir":Ljava/io/File;
    const/4 v3, 0x0

    .line 704
    .local v3, "outFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 705
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 706
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 707
    .local v2, "fileName":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 708
    const-string v4, "pjsip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 710
    :cond_0
    const-string v4, "logs_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    const-string v4, "yy-MM-dd_kkmmss"

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 712
    const-string v4, ".txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
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

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
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
    .line 698
    const-string v0, "logs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordsFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 694
    const-string v0, "records"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getStorageFolder(Landroid/content/Context;Z)Ljava/io/File;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "preferCache"    # Z

    .prologue
    .line 662
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 663
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 664
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 667
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 668
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->appname()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 670
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 671
    const-string v2, "PreferencesWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Create directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
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
    .line 680
    invoke-static {p0, p2}, Lcom/weirdvoice/utils/PreferencesWrapper;->getStorageFolder(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    .line 681
    .local v1, "root":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 682
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

    .line 683
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 686
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getZrtpFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private hasStunServer(Ljava/lang/String;)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 572
    const-string v3, "stun_server"

    invoke-virtual {p0, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "servers":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 579
    :goto_1
    return v2

    .line 573
    :cond_0
    aget-object v0, v1, v3

    .line 574
    .local v0, "server":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 575
    const/4 v2, 0x1

    goto :goto_1

    .line 573
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private needUpgrade()Ljava/lang/Integer;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 271
    const/4 v3, 0x0

    .line 273
    .local v3, "runningVersion":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getCurrentPackageInfos(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 274
    .local v2, "pinfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 275
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 276
    iget-object v4, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "last_known_version"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 278
    .local v1, "lastSeenVersion":I
    const-string v4, "PreferencesWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Last known version is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 279
    const-string v6, " and currently we are running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 281
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v1, v4}, Lcom/weirdvoice/utils/Compatibility;->updateVersion(Lcom/weirdvoice/utils/PreferencesWrapper;II)V

    .line 288
    .end local v1    # "lastSeenVersion":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_1

    .line 289
    iget-object v4, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "last_known_aos_version"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 290
    .restart local v1    # "lastSeenVersion":I
    const-string v4, "PreferencesWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Last known android version "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getApiLevel()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 293
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getApiLevel()I

    move-result v4

    .line 292
    invoke-static {p0, v1, v4}, Lcom/weirdvoice/utils/Compatibility;->updateApiVersion(Lcom/weirdvoice/utils/PreferencesWrapper;II)V

    .line 294
    iget-object v4, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "last_known_aos_version"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getApiLevel()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "lastSeenVersion":I
    :cond_1
    return-object v3

    .line 283
    .restart local v1    # "lastSeenVersion":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addStunServer(Ljava/lang/String;)V
    .locals 5
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/weirdvoice/utils/PreferencesWrapper;->hasStunServer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    const-string v1, "stun_server"

    invoke-virtual {p0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "oldStuns":Ljava/lang/String;
    const-string v2, "PreferencesWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Old stun > "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    const-string v4, "stun_server"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v1, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    const-string v2, "stun_server"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    const-string v0, ""

    .line 592
    :goto_0
    const-string v1, "stun_server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .end local v0    # "oldStuns":Ljava/lang/String;
    :cond_0
    return-void

    .line 589
    .restart local v0    # "oldStuns":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dialPressTone(Z)Z
    .locals 5
    .param p1, "inCall"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 623
    if-eqz p1, :cond_2

    const-string v1, "dtmf_press_tone_mode"

    :goto_0
    invoke-virtual {p0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 624
    .local v0, "mode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 625
    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 627
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 638
    :cond_1
    :goto_2
    :pswitch_0
    return v2

    .line 623
    .end local v0    # "mode":Ljava/lang/Integer;
    :cond_2
    const-string v1, "dial_press_tone_mode"

    goto :goto_0

    .restart local v0    # "mode":Ljava/lang/Integer;
    :cond_3
    move v1, v2

    .line 625
    goto :goto_1

    .line 629
    :pswitch_1
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->resolver:Landroid/content/ContentResolver;

    .line 630
    const-string v4, "dtmf_tone"

    .line 629
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    goto :goto_2

    :pswitch_2
    move v2, v3

    .line 632
    goto :goto_2

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dialPressVibrate()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 642
    const-string v3, "dial_press_vibrate_mode"

    invoke-virtual {p0, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 643
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 654
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 645
    :pswitch_1
    iget-object v3, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->resolver:Landroid/content/ContentResolver;

    .line 646
    const-string v4, "haptic_feedback_enabled"

    .line 645
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 650
    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public endEditing()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    .line 319
    :cond_0
    return-void
.end method

.method public forceCheckUpgrade()V
    .locals 4

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->needUpgrade()Ljava/lang/Integer;

    move-result-object v1

    .line 257
    .local v1, "runningVersion":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 258
    iget-object v2, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_known_version"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/weirdvoice/utils/PreferencesWrapper;->HAS_MANAGED_VERSION_UPGRADE:Z

    .line 263
    return-void
.end method

.method public getCodecList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 778
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "codecs_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 4
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {p1, p2}, Lcom/weirdvoice/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 602
    :try_start_0
    iget-object v2, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-short v2, v2

    .line 607
    :goto_0
    return v2

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "PreferencesWrapper"

    const-string v3, "Invalid codec priority"

    invoke-static {v2, v3, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLibCapability(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cap"    # Ljava/lang/String;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backup_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/weirdvoice/utils/PreferencesWrapper;->gPrefBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/weirdvoice/utils/PreferencesWrapper;->gPrefFloatValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceIntegerValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 452
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 460
    :goto_0
    return-object v2

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "PreferencesWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format : expect a int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    sget-object v2, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 458
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 460
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/weirdvoice/utils/PreferencesWrapper;->gPrefStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCodecList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "codecs_video_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdvancedUser()Z
    .locals 3

    .prologue
    .line 744
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "is_advanced_user"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetAllDefaultValues()V
    .locals 3

    .prologue
    .line 467
    sget-object v1, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    sget-object v1, Lcom/weirdvoice/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    sget-object v1, Lcom/weirdvoice/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 476
    invoke-static {p0}, Lcom/weirdvoice/utils/Compatibility;->setFirstRunParameters(Lcom/weirdvoice/utils/PreferencesWrapper;)V

    .line 477
    const-string v1, "has_already_setup_service"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 478
    return-void

    .line 467
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    .restart local v0    # "key":Ljava/lang/String;
    sget-object v1, Lcom/weirdvoice/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    goto :goto_1

    .line 473
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 474
    .restart local v0    # "key":Ljava/lang/String;
    sget-object v1, Lcom/weirdvoice/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    goto :goto_2
.end method

.method public restoreSipSettings(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jsonSipSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->startEditing()V

    .line 523
    sget-object v4, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 533
    sget-object v4, Lcom/weirdvoice/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 543
    sget-object v4, Lcom/weirdvoice/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 558
    :try_start_0
    const-string v4, "last_known_version"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 559
    .local v2, "lastSeenVersion":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 560
    iget-object v4, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "last_known_version"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 566
    .end local v2    # "lastSeenVersion":Ljava/lang/Integer;
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->endEditing()V

    .line 567
    return-void

    .line 523
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 525
    .local v1, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, "val":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 527
    invoke-virtual {p0, v1, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 529
    .end local v3    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to get preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    .restart local v1    # "key":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 536
    .local v3, "val":Ljava/lang/Boolean;
    if-eqz v3, :cond_1

    .line 537
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 539
    .end local v3    # "val":Ljava/lang/Boolean;
    :catch_1
    move-exception v0

    .line 540
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to get preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 543
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 545
    .restart local v1    # "key":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 546
    .local v3, "val":Ljava/lang/Double;
    if-eqz v3, :cond_6

    .line 547
    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 553
    .end local v3    # "val":Ljava/lang/Double;
    :cond_6
    :goto_4
    invoke-virtual {p0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;

    goto/16 :goto_2

    .line 549
    :catch_2
    move-exception v0

    .line 550
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to get preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 562
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 563
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v4, "PreferencesWrapper"

    const-string v5, "Not able to add last known version pref"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public serializeSipSettings()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 482
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 483
    .local v1, "jsonSipSettings":Lorg/json/JSONObject;
    sget-object v4, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 490
    sget-object v4, Lcom/weirdvoice/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 497
    sget-object v4, Lcom/weirdvoice/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 507
    iget-object v4, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "last_known_version"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 509
    .local v3, "lastSeenVersion":I
    :try_start_0
    const-string v4, "last_known_version"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 513
    :goto_3
    return-object v1

    .line 483
    .end local v3    # "lastSeenVersion":I
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 485
    .local v2, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to add preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 492
    .restart local v2    # "key":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 493
    :catch_1
    move-exception v0

    .line 494
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to add preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 497
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 499
    .restart local v2    # "key":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 500
    :catch_2
    move-exception v0

    .line 501
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to add preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 510
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    .restart local v3    # "lastSeenVersion":I
    :catch_3
    move-exception v0

    .line 511
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v4, "PreferencesWrapper"

    const-string v5, "Not able to add last known version pref"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-static {p1, p2}, Lcom/weirdvoice/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0, v0, p3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_0
    return-void
.end method

.method public setPreferenceBooleanValue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 343
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setPreferenceFloatValue(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 358
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 365
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setQuit(Z)V
    .locals 1
    .param p1, "quit"    # Z

    .prologue
    .line 759
    const-string v0, "has_been_quit"

    invoke-virtual {p0, v0, p1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 760
    return-void
.end method

.method public startEditing()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    .line 309
    return-void
.end method

.method public toogleExpertMode()V
    .locals 2

    .prologue
    .line 751
    const-string v1, "is_advanced_user"

    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 752
    return-void

    .line 751
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
