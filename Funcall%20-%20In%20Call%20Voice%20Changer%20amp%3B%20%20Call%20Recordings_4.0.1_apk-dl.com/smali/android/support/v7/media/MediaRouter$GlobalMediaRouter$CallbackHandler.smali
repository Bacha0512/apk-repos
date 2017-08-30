.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_PROVIDER_ADDED:I = 0x201

.field public static final MSG_PROVIDER_CHANGED:I = 0x203

.field public static final MSG_PROVIDER_REMOVED:I = 0x202

.field public static final MSG_ROUTE_ADDED:I = 0x101

.field public static final MSG_ROUTE_CHANGED:I = 0x103

.field public static final MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED:I = 0x105

.field public static final MSG_ROUTE_REMOVED:I = 0x102

.field public static final MSG_ROUTE_SELECTED:I = 0x106

.field public static final MSG_ROUTE_UNSELECTED:I = 0x107

.field public static final MSG_ROUTE_VOLUME_CHANGED:I = 0x104

.field private static final MSG_TYPE_MASK:I = 0xff00

.field private static final MSG_TYPE_PROVIDER:I = 0x200

.field private static final MSG_TYPE_ROUTE:I = 0x100


# instance fields
.field private final mTempCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouter$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V
    .locals 1

    .prologue
    .line 2864
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    .line 2865
    return-void
.end method

.method private invokeCallback(Landroid/support/v7/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    .locals 5
    .param p1, "record"    # Landroid/support/v7/media/MediaRouter$CallbackRecord;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "arg"    # I

    .prologue
    .line 2931
    iget-object v3, p1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 2932
    .local v3, "router":Landroid/support/v7/media/MediaRouter;
    iget-object v0, p1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    .line 2933
    .local v0, "callback":Landroid/support/v7/media/MediaRouter$Callback;
    const v4, 0xff00

    and-int/2addr v4, p2

    sparse-switch v4, :sswitch_data_0

    .line 2979
    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object v2, p3

    .line 2935
    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2936
    .local v2, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouter$CallbackRecord;->filterRouteEvent(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2939
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2941
    :pswitch_0
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2944
    :pswitch_1
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2947
    :pswitch_2
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2950
    :pswitch_3
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2953
    :pswitch_4
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2956
    :pswitch_5
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2959
    :pswitch_6
    invoke-virtual {v0, v3, v2, p4}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    goto :goto_0

    .end local v2    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :sswitch_1
    move-object v1, p3

    .line 2965
    check-cast v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2966
    .local v1, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 2968
    :pswitch_7
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    .line 2971
    :pswitch_8
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    .line 2974
    :pswitch_9
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    .line 2933
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch

    .line 2939
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2966
    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private syncWithSystemProvider(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2914
    packed-switch p1, :pswitch_data_0

    .line 2928
    .end local p2    # "obj":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    return-void

    .line 2916
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteAdded(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2919
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2922
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteChanged(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2925
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteSelected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2914
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2879
    iget v5, p1, Landroid/os/Message;->what:I

    .line 2880
    .local v5, "what":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2881
    .local v3, "obj":Ljava/lang/Object;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2883
    .local v0, "arg":I
    const/16 v6, 0x103

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    .line 2884
    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v6, v3

    check-cast v6, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2885
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    const/4 v7, 0x1

    # invokes: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V
    invoke-static {v6, v7}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Z)V

    .line 2889
    :cond_0
    invoke-direct {p0, v5, v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->syncWithSystemProvider(ILjava/lang/Object;)V

    .line 2895
    :try_start_0
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v6, v6, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 2896
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v6, v6, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter;

    .line 2897
    .local v4, "router":Landroid/support/v7/media/MediaRouter;
    if-nez v4, :cond_1

    .line 2898
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v6, v6, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2909
    .end local v2    # "i":I
    .end local v4    # "router":Landroid/support/v7/media/MediaRouter;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    throw v6

    .line 2900
    .restart local v2    # "i":I
    .restart local v4    # "router":Landroid/support/v7/media/MediaRouter;
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    iget-object v7, v4, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2904
    .end local v4    # "router":Landroid/support/v7/media/MediaRouter;
    :cond_2
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2905
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 2906
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    invoke-direct {p0, v6, v5, v3, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->invokeCallback(Landroid/support/v7/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2905
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2909
    :cond_3
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2911
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2868
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2869
    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg"    # I

    .prologue
    .line 2872
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2873
    .local v0, "message":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2874
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2875
    return-void
.end method
