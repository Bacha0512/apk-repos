.class public Lorg/abtollc/service/DeviceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateReceiver.java"


# static fields
.field public static final APPLY_NIGHTLY_UPLOAD:Ljava/lang/String; = "org.abtollc.action.APPLY_NIGHTLY"

.field private static final THIS_FILE:Ljava/lang/String; = "Device State"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    new-instance v6, Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-direct {v6, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    .line 30
    .local v6, "prefWrapper":Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "intentAction":Ljava/lang/String;
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 45
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 47
    const-string v9, "Device State"

    const-string v10, "CONNECTIVITY_ACTION"

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "has_been_quit"

    .line 52
    invoke-virtual {v6, v9}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 53
    const-string v9, "Device State"

    const-string v10, "Try to start service if not already started"

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v8, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v8, "sip_service_intent":Landroid/content/Intent;
    invoke-virtual {p1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    .end local v8    # "sip_service_intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v9, "org.abtollc.accounts.activate"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 59
    const-string v9, "Device State"

    const-string v10, "CONNECTIVITY_ACTION"

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v9, "id"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 63
    .local v0, "accId":J
    const-wide/16 v10, -0x1

    cmp-long v9, v0, v10

    if-nez v9, :cond_2

    .line 66
    const-string v9, "id"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 69
    :cond_2
    const-wide/16 v10, -0x1

    cmp-long v9, v0, v10

    if-eqz v9, :cond_0

    .line 70
    const-string v9, "active"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 71
    .local v2, "active":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v9, "active"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v9}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v9

    sget-object v10, Lorg/abtollc/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    .line 74
    invoke-static {v10, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 73
    invoke-virtual {v9, v10, v3, v11, v12}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 76
    .local v4, "done":I
    if-lez v4, :cond_0

    .line 77
    invoke-virtual {v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 78
    new-instance v7, Landroid/content/Intent;

    const-class v9, Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v7, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v7, "sipServiceIntent":Landroid/content/Intent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 83
    .end local v0    # "accId":J
    .end local v2    # "active":Z
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "done":I
    .end local v7    # "sipServiceIntent":Landroid/content/Intent;
    :cond_3
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .line 84
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 85
    :cond_4
    invoke-static {}, Lorg/abtollc/utils/CallHandlerPlugin;->clearAvailableCallHandlers()V

    .line 86
    invoke-static {}, Lorg/abtollc/utils/RewriterPlugin;->clearAvailableRewriters()V

    .line 87
    invoke-static {}, Lorg/abtollc/utils/ExtraPlugins;->clearDynPlugins()V

    goto/16 :goto_0

    .line 89
    :cond_5
    const-string v9, "org.abtollc.action.APPLY_NIGHTLY"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 92
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 94
    const-string v9, "Device State"

    const-string v10, "Boot Completed"

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->killProcess(I)V

    .line 97
    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0
.end method
