.class Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseCProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/toolbox/DatabaseCProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 768
    const-string v0, "tribair.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 769
    iput-object p1, p0, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;->myContext:Landroid/content/Context;

    .line 770
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 774
    const-string v3, "DatabaseCProvider"

    const-string v4, "create tables"

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/16 v3, 0xb

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 777
    iget-object v3, p0, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;->myContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 778
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 779
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "dbvers"

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 780
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 781
    const-string v3, "CREATE TABLE IF NOT EXISTS smsmessages (id INTEGER PRIMARY KEY AUTOINCREMENT, apiCode BIGINT DEFAULT \'\', ctcNo VARCHAR(20) NOT NULL DEFAULT \'000\', msgDate INTEGER, isRead CHAR(1) NOT NULL DEFAULT 1, message TEXT);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 784
    const-string v3, "CREATE TABLE IF NOT EXISTS smscontacts (id INTEGER PRIMARY KEY AUTOINCREMENT, ctcNo VARCHAR(20) NOT NULL DEFAULT \'000\', ctcName varchar(40) DEFAULT \'\', didNo VARCHAR(20) NOT NULL DEFAULT \'000\', newMsg CHAR(1) NOT NULL DEFAULT 0, isSMS CHAR(1) NOT NULL DEFAULT 0, isDel CHAR(1) NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 788
    const-string v3, "CREATE TABLE IF NOT EXISTS ratesin (id INTEGER PRIMARY KEY AUTOINCREMENT, CountryId INTEGER, CountryName varchar(40), CountryIso varchar(10), smsRate INTEGER, inRate INTEGER, apiCode INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 791
    const-string v3, "CREATE TABLE IF NOT EXISTS ratescomb (id INTEGER PRIMARY KEY AUTOINCREMENT, CountryId INTEGER, CountryName varchar(40), CountryShName varchar(40), CountryIso varchar(10), subCountry varchar(20), smsRate INTEGER, inRate INTEGER, outRate INTEGER, apiCode INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 795
    const-string v3, "CREATE TABLE IF NOT EXISTS currencies (id INTEGER PRIMARY KEY AUTOINCREMENT, apiCode INTEGER, active varchar(2), code varchar(3), euroRate FLOAT, name varchar(40));"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DatabaseCProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create cant create prepo db"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 805
    const-string v2, "DatabaseCProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Upgrading database from version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 806
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which will destroy all old data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 805
    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v2, p0, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;->myContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 808
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "dbvers"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "dbVers":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 811
    const-string v2, "DatabaseCProvider"

    const-string v3, "upgrade db"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0, p1}, Lcom/weirdvoice/toolbox/DatabaseCProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 814
    :cond_0
    return-void
.end method
