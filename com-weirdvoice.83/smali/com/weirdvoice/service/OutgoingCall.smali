.class public Lcom/weirdvoice/service/OutgoingCall;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCall.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "Outgoing RCV"

.field private static gsmCallHandlerId:Ljava/lang/Long;

.field public static ignoreNext:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/weirdvoice/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/weirdvoice/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 54
    iput-object p1, p0, Lcom/weirdvoice/service/OutgoingCall;->context:Landroid/content/Context;

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/weirdvoice/service/OutgoingCall;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "number":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    const-string v4, ""

    sput-object v4, Lcom/weirdvoice/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, v1}, Lcom/weirdvoice/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 75
    const-string v4, "Outgoing RCV"

    const-string v5, "Not launching with correct action ! Do not process"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/weirdvoice/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    new-instance v4, Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    iget-object v5, p0, Lcom/weirdvoice/service/OutgoingCall;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/weirdvoice/service/OutgoingCall;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 82
    sget-object v4, Lcom/weirdvoice/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 83
    iget-object v4, p0, Lcom/weirdvoice/service/OutgoingCall;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v5, "integrate_with_native_dialer"

    invoke-virtual {v4, v5, v7}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    if-nez v0, :cond_4

    .line 86
    :cond_3
    const-string v4, "Outgoing RCV"

    const-string v5, "Our selector disabled, or Mobile chosen in our selector, send to tel"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v4, ""

    sput-object v4, Lcom/weirdvoice/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v1}, Lcom/weirdvoice/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_4
    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 97
    iget-object v4, p0, Lcom/weirdvoice/service/OutgoingCall;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 98
    .local v3, "potentialHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Outgoing RCV"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "We have "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " potential handlers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lcom/weirdvoice/service/OutgoingCall;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v4}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-le v4, v7, :cond_8

    .line 105
    :cond_5
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    sget-object v4, Lcom/weirdvoice/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    if-nez v4, :cond_6

    .line 112
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/weirdvoice/plugins/telephony/CallHandler;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Lcom/weirdvoice/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    .line 114
    :cond_6
    sget-object v4, Lcom/weirdvoice/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 115
    sget-object v4, Lcom/weirdvoice/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5, v1}, Lcom/weirdvoice/models/Filter;->isMustCallNumber(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 116
    const-string v4, "Outgoing RCV"

    const-string v5, "Filtering to force pass number along"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v4, Lcom/weirdvoice/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5, v1}, Lcom/weirdvoice/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/weirdvoice/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "outgoingCallChooserIntent":Landroid/content/Intent;
    const-string v4, "sip"

    invoke-static {v4, v1}, Lcom/weirdvoice/api/SipUri;->forgeSipUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    iget-object v4, p0, Lcom/weirdvoice/service/OutgoingCall;->context:Landroid/content/Context;

    const-class v5, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    const-string v4, "Outgoing RCV"

    const-string v5, "Start outgoing call chooser for CSipSimple"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/weirdvoice/service/OutgoingCall;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/weirdvoice/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v2    # "outgoingCallChooserIntent":Landroid/content/Intent;
    .end local v3    # "potentialHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string v4, "Outgoing RCV"

    const-string v5, "Can\'t use SIP, pass number along"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/weirdvoice/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
