.class public Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "OutgoingCallChooser.java"


# static fields
.field private static final SCHEME_CSIP:Ljava/lang/String; = "csip"

.field private static final THIS_FILE:Ljava/lang/String; = "OutgoingCallChooser"


# instance fields
.field private accountToCallTo:Ljava/lang/Long;

.field private callAutomatically:Ljava/lang/Boolean;

.field private connection:Landroid/content/ServiceConnection;

.field private ignoreRewritingRules:Z

.field private phoneNumber:Ljava/lang/String;

.field private service:Lcom/weirdvoice/api/ISipService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->ignoreRewritingRules:Z

    .line 67
    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->accountToCallTo:Ljava/lang/Long;

    .line 68
    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->callAutomatically:Ljava/lang/Boolean;

    .line 179
    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->service:Lcom/weirdvoice/api/ISipService;

    .line 180
    new-instance v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser$1;-><init>(Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->connection:Landroid/content/ServiceConnection;

    .line 45
    return-void
.end method

.method static synthetic access$5(Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;Lcom/weirdvoice/api/ISipService;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->service:Lcom/weirdvoice/api/ISipService;

    return-void
.end method

.method private connectService()V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-direct {v0, p0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "prefsWrapper":Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.weirdvoice.service.SipService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "sipService":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "outgoing_activity"

    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 170
    return-void
.end method

.method private resetInternals()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 231
    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->accountToCallTo:Ljava/lang/Long;

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->ignoreRewritingRules:Z

    .line 233
    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->callAutomatically:Ljava/lang/Boolean;

    .line 234
    return-void
.end method


# virtual methods
.method public canCallAutomatically()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 139
    iget-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->callAutomatically:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getAccountToCallTo()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 142
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->callAutomatically:Ljava/lang/Boolean;

    .line 153
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->callAutomatically:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fallback_behavior"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, "fallbackBehavior":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 147
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->callAutomatically:Ljava/lang/Boolean;

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->callAutomatically:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public finishServiceIfNeeded(Z)V
    .locals 3
    .param p1, "defer"    # Z

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "com.weirdvoice.service.ACTION_DEFER_OUTGOING_UNREGISTER"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "outgoing_activity"

    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->finish()V

    .line 217
    return-void

    .line 213
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "com.weirdvoice.service.ACTION_OUTGOING_UNREGISTER"

    goto :goto_0
.end method

.method public getAccountToCallTo()J
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->accountToCallTo:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "acc_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->accountToCallTo:Ljava/lang/Long;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->accountToCallTo:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectedService()Lcom/weirdvoice/api/ISipService;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->service:Lcom/weirdvoice/api/ISipService;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    iget-object v4, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 84
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 86
    .local v2, "it":Landroid/content/Intent;
    invoke-static {v2, p0}, Lcom/weirdvoice/utils/UriUtils;->extractNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 89
    iget-object v4, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 90
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 92
    .local v1, "data":Landroid/net/Uri;
    const-string v4, "android.intent.action.SENDTO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "scheme":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 97
    :cond_0
    const-string v4, "csip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->ignoreRewritingRules:Z

    .line 103
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "data":Landroid/net/Uri;
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 104
    const-string v4, ""

    iput-object v4, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 109
    .end local v2    # "it":Landroid/content/Intent;
    :goto_0
    return-object v4

    :cond_3
    iget-object v4, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->finishServiceIfNeeded(Z)V

    .line 205
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->resetInternals()V

    .line 56
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "OutgoingCallChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No number detected for : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->finish()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->connectService()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 222
    invoke-direct {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->resetInternals()V

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 195
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->onBackPressed()V

    .line 200
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 73
    invoke-direct {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->resetInternals()V

    .line 74
    return-void
.end method

.method public shouldIgnoreRewritingRules()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getPhoneNumber()Ljava/lang/String;

    .line 120
    iget-boolean v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->ignoreRewritingRules:Z

    return v0
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super/range {p0 .. p6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super/range {p0 .. p7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
