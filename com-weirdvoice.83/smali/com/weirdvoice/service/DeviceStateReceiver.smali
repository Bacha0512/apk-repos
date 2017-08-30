.class public Lcom/weirdvoice/service/DeviceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateReceiver.java"


# static fields
.field public static final APPLY_NIGHTLY_UPLOAD:Ljava/lang/String; = "com.weirdvoice.action.APPLY_NIGHTLY"

.field private static final THIS_FILE:Ljava/lang/String; = "DeviceStateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    new-instance v6, Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-direct {v6, p1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    .line 50
    .local v6, "prefWrapper":Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "intentAction":Ljava/lang/String;
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 66
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 68
    :cond_0
    invoke-virtual {v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 71
    const-string v9, "has_been_quit"

    invoke-virtual {v6, v9}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    .line 72
    const-string v9, "DeviceStateReceiver"

    const-string v10, "Try to start service if not already started"

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/weirdvoice/service/SipService;

    invoke-direct {v8, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v8, "sip_service_intent":Landroid/content/Intent;
    invoke-virtual {p1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    .end local v8    # "sip_service_intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    const-string v9, "com.weirdvoice.accounts.activate"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 78
    const-string v9, "android.permission.CONFIGURE_SIP"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v9, "id"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 83
    .local v0, "accId":J
    const-wide/16 v10, -0x1

    cmp-long v9, v0, v10

    if-nez v9, :cond_3

    .line 86
    const-string v9, "id"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-long v0, v9

    .line 89
    :cond_3
    const-wide/16 v10, -0x1

    cmp-long v9, v0, v10

    if-eqz v9, :cond_1

    .line 90
    const-string v9, "active"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 91
    .local v2, "active":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v9, "active"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 94
    sget-object v10, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v10, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 95
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 93
    invoke-virtual {v9, v10, v3, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 96
    .local v4, "done":I
    if-lez v4, :cond_1

    .line 97
    invoke-virtual {v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 98
    new-instance v7, Landroid/content/Intent;

    const-class v9, Lcom/weirdvoice/service/SipService;

    invoke-direct {v7, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v7, "sipServiceIntent":Landroid/content/Intent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 103
    .end local v0    # "accId":J
    .end local v2    # "active":Z
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "done":I
    .end local v7    # "sipServiceIntent":Landroid/content/Intent;
    :cond_4
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 104
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 105
    :cond_5
    invoke-static {}, Lcom/weirdvoice/utils/CallHandlerPlugin;->clearAvailableCallHandlers()V

    .line 106
    invoke-static {}, Lcom/weirdvoice/utils/RewriterPlugin;->clearAvailableRewriters()V

    .line 107
    invoke-static {}, Lcom/weirdvoice/utils/ExtraPlugins;->clearDynPlugins()V

    .line 108
    invoke-static {}, Lcom/weirdvoice/utils/PhoneCapabilityTester;->deinit()V

    goto :goto_0
.end method
