.class public Lorg/abtollc/utils/CallsUtils;
.super Ljava/lang/Object;
.source "CallsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getStringCallState(Lorg/abtollc/api/SipCallSession;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "session"    # Lorg/abtollc/api/SipCallSession;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->getCallState()I

    move-result v0

    .line 18
    .local v0, "callState":I
    packed-switch v0, :pswitch_data_0

    .line 35
    const-string v1, ""

    :goto_0
    return-object v1

    .line 20
    :pswitch_0
    const-string v1, "Calling\u2026"

    goto :goto_0

    .line 22
    :pswitch_1
    const-string v1, "Talking"

    goto :goto_0

    .line 24
    :pswitch_2
    const-string v1, "Connecting\u2026"

    goto :goto_0

    .line 26
    :pswitch_3
    const-string v1, "Hung up"

    goto :goto_0

    .line 28
    :pswitch_4
    const-string v1, "Ringing\u2026"

    goto :goto_0

    .line 30
    :pswitch_5
    const-string v1, "Incoming call\u2026"

    goto :goto_0

    .line 32
    :pswitch_6
    const-string v1, "ERROR"

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
