.class public Lorg/abtollc/service/OutgoingCall;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCall.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "Outgoing RCV"

.field private static gsmCallHandlerId:Ljava/lang/Long;

.field public static ignoreNext:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lorg/abtollc/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    .line 25
    const-string v0, ""

    sput-object v0, Lorg/abtollc/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/abtollc/service/OutgoingCall;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "number":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    const-string v3, "Outgoing RCV"

    const-string v4, "It\'s an emergency number ignore that"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, ""

    sput-object v3, Lorg/abtollc/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v1}, Lorg/abtollc/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    iput-object p1, p0, Lorg/abtollc/service/OutgoingCall;->context:Landroid/content/Context;

    .line 47
    new-instance v3, Lorg/abtollc/utils/PreferencesProviderWrapper;

    iget-object v4, p0, Lorg/abtollc/service/OutgoingCall;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/abtollc/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/abtollc/service/OutgoingCall;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    .line 51
    sget-object v3, Lorg/abtollc/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/abtollc/service/OutgoingCall;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v4, "integrate_with_native_dialer"

    .line 52
    invoke-virtual {v3, v4, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    .line 55
    :cond_2
    const-string v3, "Outgoing RCV"

    const-string v4, "Our selector disabled, or Mobile chosen in our selector, send to tel"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v3, ""

    sput-object v3, Lorg/abtollc/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, v1}, Lorg/abtollc/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 66
    iget-object v3, p0, Lorg/abtollc/service/OutgoingCall;->context:Landroid/content/Context;

    invoke-static {v3}, Lorg/abtollc/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 67
    .local v2, "potentialHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Outgoing RCV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " potential handlers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lorg/abtollc/service/OutgoingCall;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-le v3, v6, :cond_7

    .line 74
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    sget-object v3, Lorg/abtollc/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    if-nez v3, :cond_5

    .line 81
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lorg/abtollc/plugins/telephony/CallHandler;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/abtollc/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Lorg/abtollc/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    .line 83
    :cond_5
    sget-object v3, Lorg/abtollc/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 84
    sget-object v3, Lorg/abtollc/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5, v1}, Lorg/abtollc/models/Filter;->isMustCallNumber(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 85
    const-string v3, "Outgoing RCV"

    const-string v4, "Filtering to force pass number along"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v1}, Lorg/abtollc/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/abtollc/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    .end local v2    # "potentialHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    const-string v3, "Outgoing RCV"

    const-string v4, "Can\'t use SIP, pass number along"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v1}, Lorg/abtollc/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
