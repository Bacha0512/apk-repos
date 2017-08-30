.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->connect(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field private final synthetic val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field private final synthetic val$pkg:Ljava/lang/String;

.field private final synthetic val$rootHints:Landroid/os/Bundle;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    iput p5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 551
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 554
    .local v0, "b":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;)Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-result-object v3

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;)Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V

    .line 557
    .local v1, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 558
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    .line 559
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 562
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;)Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iget v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object v3

    .line 561
    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 565
    iget-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    if-nez v3, :cond_1

    .line 566
    const-string v3, "MBServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No root for client "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 567
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v2

    .line 571
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MBServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 571
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;)Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-result-object v3

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;)Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v3, :cond_0

    .line 578
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v4

    .line 579
    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
    invoke-static {v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;)Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-result-object v5

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v6, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 578
    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 581
    :catch_1
    move-exception v2

    .line 582
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v3, "MBServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calling onConnect() failed. Dropping client. pkg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;)Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-result-object v3

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
