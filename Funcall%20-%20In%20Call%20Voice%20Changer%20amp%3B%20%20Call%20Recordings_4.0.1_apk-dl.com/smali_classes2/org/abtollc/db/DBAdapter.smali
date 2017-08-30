.class public Lorg/abtollc/db/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/db/DBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "SIP ACC_DB"


# instance fields
.field private final context:Landroid/content/Context;

.field private databaseHelper:Lorg/abtollc/db/DBAdapter$DatabaseHelper;

.field private opened:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/db/DBAdapter;->opened:Z

    .line 23
    iput-object p1, p0, Lorg/abtollc/db/DBAdapter;->context:Landroid/content/Context;

    .line 24
    new-instance v0, Lorg/abtollc/db/DBAdapter$DatabaseHelper;

    iget-object v1, p0, Lorg/abtollc/db/DBAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/abtollc/db/DBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/abtollc/db/DBAdapter;->databaseHelper:Lorg/abtollc/db/DBAdapter$DatabaseHelper;

    .line 25
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p0, p1, p2, p3}, Lorg/abtollc/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ADD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 416
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/abtollc/db/DBAdapter;->databaseHelper:Lorg/abtollc/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lorg/abtollc/db/DBAdapter$DatabaseHelper;->close()V

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/db/DBAdapter;->opened:Z

    .line 408
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lorg/abtollc/db/DBAdapter;->opened:Z

    return v0
.end method

.method public open()Lorg/abtollc/db/DBAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lorg/abtollc/db/DBAdapter;->databaseHelper:Lorg/abtollc/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lorg/abtollc/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/db/DBAdapter;->opened:Z

    .line 399
    return-object p0
.end method
