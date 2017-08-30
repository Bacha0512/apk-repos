.class public Lcom/weirdvoice/backup/SipBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SipBackupAgent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static final KEY_DATABASES:Ljava/lang/String; = "databases"

.field private static final KEY_SHARED_PREFS:Ljava/lang/String; = "shared_prefs"

.field private static final THIS_FILE:Ljava/lang/String; = "SipBackupAgent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 51
    const-string v2, "SipBackupAgent"

    const-string v3, "Create backup agent"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;

    invoke-direct {v1, p0}, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, "sharedPrefsHelper":Lcom/weirdvoice/backup/SipSharedPreferencesHelper;
    const-string v2, "shared_prefs"

    invoke-virtual {p0, v2, v1}, Lcom/weirdvoice/backup/SipBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 55
    new-instance v0, Lcom/weirdvoice/backup/SipProfilesHelper;

    invoke-direct {v0, p0}, Lcom/weirdvoice/backup/SipProfilesHelper;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "profilesHelper":Lcom/weirdvoice/backup/SipProfilesHelper;
    const-string v2, "databases"

    invoke-virtual {p0, v2, v0}, Lcom/weirdvoice/backup/SipBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 57
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v0, "SipBackupAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App version code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 72
    return-void
.end method
