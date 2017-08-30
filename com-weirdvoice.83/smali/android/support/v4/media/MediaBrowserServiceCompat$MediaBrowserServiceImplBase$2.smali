.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

.field private final synthetic val$options:Landroid/os/Bundle;

.field private final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Landroid/os/Bundle;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 175
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->access$0(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-result-object v4

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    return-void

    .line 175
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 176
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->access$0(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-result-object v4

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$1(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 178
    .local v3, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    iget-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 179
    .local v2, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v2, :cond_0

    .line 180
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/Pair;

    .line 182
    .local v1, "callback":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Landroid/os/Bundle;

    iget-object v4, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 181
    invoke-static {v7, v4}, Landroid/support/v4/media/MediaBrowserCompatUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v4

    .line 182
    if-eqz v4, :cond_2

    .line 183
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->access$0(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    iget-object v4, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    # invokes: Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V
    invoke-static {v7, v8, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$2(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    goto :goto_0
.end method
