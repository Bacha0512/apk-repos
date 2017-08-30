.class public Lcom/weirdvoice/utils/backup/BackupUtils8;
.super Lcom/weirdvoice/utils/backup/BackupWrapper;
.source "BackupUtils8.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/weirdvoice/utils/backup/BackupWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public dataChanged()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/weirdvoice/utils/backup/BackupUtils8;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "bmgr":Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 38
    return-void
.end method
