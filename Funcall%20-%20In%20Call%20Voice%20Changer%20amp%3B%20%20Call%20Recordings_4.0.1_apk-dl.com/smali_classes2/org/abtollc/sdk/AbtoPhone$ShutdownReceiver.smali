.class Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbtoPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutdownReceiver"
.end annotation


# static fields
.field public static final ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String; = "android.intent.action.QUICKBOOT_POWEROFF"


# instance fields
.field private phone:Lorg/abtollc/sdk/AbtoPhone;


# direct methods
.method public constructor <init>(Lorg/abtollc/sdk/AbtoPhone;)V
    .locals 0
    .param p1, "phone"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 2006
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2007
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;->phone:Lorg/abtollc/sdk/AbtoPhone;

    .line 2008
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2012
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2014
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2016
    :cond_0
    :try_start_0
    const-string v4, "Shutdown"

    const-string v5, "Device Shutdown"

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    new-instance v3, Lorg/abtollc/utils/PreferencesWrapper;

    invoke-direct {v3, p1}, Lorg/abtollc/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 2019
    .local v3, "prefs":Lorg/abtollc/utils/PreferencesWrapper;
    const-string v4, "has_been_quit"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 2020
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;->phone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v4}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v4

    iget-object v5, p0, Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;->phone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v5}, Lorg/abtollc/sdk/AbtoPhone;->getCurrentAccountId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v1

    .line 2021
    .local v1, "currentAccount":Lorg/abtollc/api/SipProfile;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lorg/abtollc/api/SipProfile;->active:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;->phone:Lorg/abtollc/sdk/AbtoPhone;

    .line 2022
    invoke-static {v4}, Lorg/abtollc/sdk/AbtoPhone;->access$3000(Lorg/abtollc/sdk/AbtoPhone;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2023
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;->phone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v4}, Lorg/abtollc/sdk/AbtoPhone;->unregister()V

    .line 2025
    const/4 v4, 0x0

    iput-boolean v4, v1, Lorg/abtollc/api/SipProfile;->active:Z

    .line 2026
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;->phone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v4}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/abtollc/sdk/AbtoPhoneCfg;->updateAccount(Lorg/abtollc/api/SipProfile;)V

    .line 2029
    :cond_1
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;->phone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v4}, Lorg/abtollc/sdk/AbtoPhone;->destroy()V

    .line 2031
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    .end local v1    # "currentAccount":Lorg/abtollc/api/SipProfile;
    .end local v3    # "prefs":Lorg/abtollc/utils/PreferencesWrapper;
    :cond_2
    :goto_0
    return-void

    .line 2032
    :catch_0
    move-exception v2

    .line 2033
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
