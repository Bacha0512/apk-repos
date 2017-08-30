.class Lcom/weirdvoice/ui/incall/InCallMediaControl$1;
.super Landroid/content/BroadcastReceiver;
.source "InCallMediaControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallMediaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$1;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    .line 157
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.weirdvoice.service.CALL_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 164
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$1;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    # getter for: Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;
    invoke-static {v6}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->access$0(Lcom/weirdvoice/ui/incall/InCallMediaControl;)Lcom/weirdvoice/api/ISipService;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 166
    :try_start_0
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$1;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    # getter for: Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;
    invoke-static {v6}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->access$0(Lcom/weirdvoice/ui/incall/InCallMediaControl;)Lcom/weirdvoice/api/ISipService;

    move-result-object v6

    invoke-interface {v6}, Lcom/weirdvoice/api/ISipService;->getCalls()[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v2

    .line 167
    .local v2, "callsInfo":[Lcom/weirdvoice/api/SipCallSession;
    const/4 v3, 0x0

    .line 168
    .local v3, "currentCallInfo":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v2, :cond_0

    .line 169
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_2

    .line 184
    :cond_0
    if-nez v3, :cond_1

    .line 185
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$1;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    invoke-virtual {v6}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->finish()V

    .line 192
    .end local v2    # "callsInfo":[Lcom/weirdvoice/api/SipCallSession;
    .end local v3    # "currentCallInfo":Lcom/weirdvoice/api/SipCallSession;
    :cond_1
    :goto_1
    return-void

    .line 169
    .restart local v2    # "callsInfo":[Lcom/weirdvoice/api/SipCallSession;
    .restart local v3    # "currentCallInfo":Lcom/weirdvoice/api/SipCallSession;
    :cond_2
    aget-object v1, v2, v6

    .line 170
    .local v1, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 171
    .local v5, "state":I
    sparse-switch v5, :sswitch_data_0

    .line 176
    move-object v3, v1

    .line 179
    :sswitch_0
    if-nez v3, :cond_0

    .line 169
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    .end local v2    # "callsInfo":[Lcom/weirdvoice/api/SipCallSession;
    .end local v3    # "currentCallInfo":Lcom/weirdvoice/api/SipCallSession;
    .end local v5    # "state":I
    :catch_0
    move-exception v4

    .line 188
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "inCallMediaCtrl"

    const-string v7, "Not able to retrieve calls"

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
