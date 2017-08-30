.class public abstract Lcom/weirdvoice/utils/backup/BackupWrapper;
.super Ljava/lang/Object;
.source "BackupWrapper.java"


# static fields
.field private static instance:Lcom/weirdvoice/utils/backup/BackupWrapper;


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/weirdvoice/utils/backup/BackupWrapper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/weirdvoice/utils/backup/BackupWrapper;->instance:Lcom/weirdvoice/utils/backup/BackupWrapper;

    if-nez v0, :cond_0

    .line 34
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lcom/weirdvoice/utils/backup/BackupUtils8;

    invoke-direct {v0}, Lcom/weirdvoice/utils/backup/BackupUtils8;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/backup/BackupWrapper;->instance:Lcom/weirdvoice/utils/backup/BackupWrapper;

    .line 39
    :goto_0
    sget-object v0, Lcom/weirdvoice/utils/backup/BackupWrapper;->instance:Lcom/weirdvoice/utils/backup/BackupWrapper;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/weirdvoice/utils/backup/BackupWrapper;->instance:Lcom/weirdvoice/utils/backup/BackupWrapper;

    invoke-virtual {v0, p0}, Lcom/weirdvoice/utils/backup/BackupWrapper;->setContext(Landroid/content/Context;)V

    .line 44
    :cond_0
    sget-object v0, Lcom/weirdvoice/utils/backup/BackupWrapper;->instance:Lcom/weirdvoice/utils/backup/BackupWrapper;

    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/weirdvoice/utils/backup/BackupUtils3;

    invoke-direct {v0}, Lcom/weirdvoice/utils/backup/BackupUtils3;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/backup/BackupWrapper;->instance:Lcom/weirdvoice/utils/backup/BackupWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract dataChanged()V
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/weirdvoice/utils/backup/BackupWrapper;->context:Landroid/content/Context;

    .line 51
    return-void
.end method
