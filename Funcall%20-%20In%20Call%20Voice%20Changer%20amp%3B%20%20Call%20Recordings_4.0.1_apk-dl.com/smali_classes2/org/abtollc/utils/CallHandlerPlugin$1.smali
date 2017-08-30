.class Lorg/abtollc/utils/CallHandlerPlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "CallHandlerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/utils/CallHandlerPlugin;->loadFrom(Ljava/lang/String;Ljava/lang/String;Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/utils/CallHandlerPlugin;

.field final synthetic val$componentName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/abtollc/utils/CallHandlerPlugin;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/utils/CallHandlerPlugin;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/abtollc/utils/CallHandlerPlugin$1;->this$0:Lorg/abtollc/utils/CallHandlerPlugin;

    iput-object p2, p0, Lorg/abtollc/utils/CallHandlerPlugin$1;->val$componentName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/abtollc/utils/CallHandlerPlugin$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "resolvedInfos":Landroid/os/Bundle;
    iget-object v1, p0, Lorg/abtollc/utils/CallHandlerPlugin$1;->this$0:Lorg/abtollc/utils/CallHandlerPlugin;

    iget-object v2, p0, Lorg/abtollc/utils/CallHandlerPlugin$1;->val$componentName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/abtollc/utils/CallHandlerPlugin;->fillWith(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    iget-object v1, p0, Lorg/abtollc/utils/CallHandlerPlugin$1;->this$0:Lorg/abtollc/utils/CallHandlerPlugin;

    # getter for: Lorg/abtollc/utils/CallHandlerPlugin;->listener:Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;
    invoke-static {v1}, Lorg/abtollc/utils/CallHandlerPlugin;->access$000(Lorg/abtollc/utils/CallHandlerPlugin;)Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/abtollc/utils/CallHandlerPlugin$1;->this$0:Lorg/abtollc/utils/CallHandlerPlugin;

    # getter for: Lorg/abtollc/utils/CallHandlerPlugin;->listener:Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;
    invoke-static {v1}, Lorg/abtollc/utils/CallHandlerPlugin;->access$000(Lorg/abtollc/utils/CallHandlerPlugin;)Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/utils/CallHandlerPlugin$1;->this$0:Lorg/abtollc/utils/CallHandlerPlugin;

    invoke-interface {v1, v2}, Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;->onLoad(Lorg/abtollc/utils/CallHandlerPlugin;)V

    .line 78
    :cond_0
    return-void
.end method
