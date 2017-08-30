.class Lcom/weirdvoice/ui/incall/InCallActivity$2;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallActivity;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 792
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-static {p2}, Lcom/weirdvoice/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/weirdvoice/api/ISipService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$10(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/api/ISipService;)V

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$5(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/ISipService;

    move-result-object v2

    invoke-interface {v2}, Lcom/weirdvoice/api/ISipService;->getCalls()[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$7(Lcom/weirdvoice/ui/incall/InCallActivity;[Lcom/weirdvoice/api/SipCallSession;)V

    .line 797
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$11(Lcom/weirdvoice/ui/incall/InCallActivity;Z)V

    .line 799
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    new-instance v2, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;)V

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 800
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    new-instance v2, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;)V

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InCallActivity"

    const-string v2, "Can\'t get back the call"

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$11(Lcom/weirdvoice/ui/incall/InCallActivity;Z)V

    .line 809
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity$2;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$7(Lcom/weirdvoice/ui/incall/InCallActivity;[Lcom/weirdvoice/api/SipCallSession;)V

    .line 810
    return-void
.end method
