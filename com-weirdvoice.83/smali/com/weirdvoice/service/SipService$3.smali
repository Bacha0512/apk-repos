.class Lcom/weirdvoice/service/SipService$3;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService;->registerServiceBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$3;->this$0:Lcom/weirdvoice/service/SipService;

    .line 1086
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1089
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1090
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.weirdvoice.service.ACTION_OUTGOING_UNREGISTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1091
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$3;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "outgoing_activity"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Lcom/weirdvoice/service/SipService;->unregisterForOutgoing(Landroid/content/ComponentName;)V

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    const-string v1, "com.weirdvoice.service.ACTION_DEFER_OUTGOING_UNREGISTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$3;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "outgoing_activity"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Lcom/weirdvoice/service/SipService;->deferUnregisterForOutgoing(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
