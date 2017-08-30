.class Lcom/weirdvoice/utils/CallHandlerPlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "CallHandlerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/utils/CallHandlerPlugin;->loadFrom(Ljava/lang/String;Ljava/lang/String;Lcom/weirdvoice/utils/CallHandlerPlugin$OnLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/utils/CallHandlerPlugin;

.field private final synthetic val$componentName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/weirdvoice/utils/CallHandlerPlugin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/utils/CallHandlerPlugin$1;->this$0:Lcom/weirdvoice/utils/CallHandlerPlugin;

    iput-object p2, p0, Lcom/weirdvoice/utils/CallHandlerPlugin$1;->val$componentName:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/weirdvoice/utils/CallHandlerPlugin$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "resolvedInfos":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/weirdvoice/utils/CallHandlerPlugin$1;->this$0:Lcom/weirdvoice/utils/CallHandlerPlugin;

    iget-object v2, p0, Lcom/weirdvoice/utils/CallHandlerPlugin$1;->val$componentName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/weirdvoice/utils/CallHandlerPlugin;->fillWith(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 94
    iget-object v1, p0, Lcom/weirdvoice/utils/CallHandlerPlugin$1;->this$0:Lcom/weirdvoice/utils/CallHandlerPlugin;

    # getter for: Lcom/weirdvoice/utils/CallHandlerPlugin;->listener:Lcom/weirdvoice/utils/CallHandlerPlugin$OnLoadListener;
    invoke-static {v1}, Lcom/weirdvoice/utils/CallHandlerPlugin;->access$0(Lcom/weirdvoice/utils/CallHandlerPlugin;)Lcom/weirdvoice/utils/CallHandlerPlugin$OnLoadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/weirdvoice/utils/CallHandlerPlugin$1;->this$0:Lcom/weirdvoice/utils/CallHandlerPlugin;

    # getter for: Lcom/weirdvoice/utils/CallHandlerPlugin;->listener:Lcom/weirdvoice/utils/CallHandlerPlugin$OnLoadListener;
    invoke-static {v1}, Lcom/weirdvoice/utils/CallHandlerPlugin;->access$0(Lcom/weirdvoice/utils/CallHandlerPlugin;)Lcom/weirdvoice/utils/CallHandlerPlugin$OnLoadListener;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/utils/CallHandlerPlugin$1;->this$0:Lcom/weirdvoice/utils/CallHandlerPlugin;

    invoke-interface {v1, v2}, Lcom/weirdvoice/utils/CallHandlerPlugin$OnLoadListener;->onLoad(Lcom/weirdvoice/utils/CallHandlerPlugin;)V

    .line 97
    :cond_0
    return-void
.end method
