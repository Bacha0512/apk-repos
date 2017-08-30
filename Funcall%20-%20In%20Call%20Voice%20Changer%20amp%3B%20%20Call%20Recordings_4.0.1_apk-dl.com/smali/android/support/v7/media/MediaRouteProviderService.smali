.class public abstract Landroid/support/v7/media/MediaRouteProviderService;
.super Landroid/app/Service;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;,
        Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;,
        Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;,
        Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final PRIVATE_MSG_CLIENT_DIED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaRouteProviderService"

.field static final TAG:Ljava/lang/String; = "MediaRouteProviderSrv"


# instance fields
.field private final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

.field final mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

.field mProvider:Landroid/support/v7/media/MediaRouteProvider;

.field private final mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

.field private final mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

.field private final mReceiveMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "MediaRouteProviderSrv"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    .line 121
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveMessenger:Landroid/os/Messenger;

    .line 122
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    .line 123
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    .line 124
    return-void
.end method

.method private createDescriptorBundleForClient(Landroid/support/v7/media/MediaRouteProviderDescriptor;Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;)Landroid/os/Bundle;
    .locals 5
    .param p1, "descriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .param p2, "client"    # Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    const/4 v3, 0x0

    .line 440
    :goto_0
    return-object v3

    .line 427
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v2

    .line 428
    .local v2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 429
    iget v4, p2, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->mVersion:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteDescriptor;->getMinClientVersion()I

    move-result v3

    if-lt v4, v3, :cond_1

    iget v4, p2, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->mVersion:I

    .line 430
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteDescriptor;->getMaxClientVersion()I

    move-result v3

    if-le v4, v3, :cond_2

    .line 431
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 428
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 436
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 437
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "routes"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 438
    new-instance v3, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    .line 439
    invoke-static {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;-><init>(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 440
    invoke-virtual {v3, v2}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->addRoutes(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0
.end method

.method private getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    .line 478
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getClientId(Landroid/os/Messenger;)Ljava/lang/String;
    .locals 2
    .param p0, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static sendGenericFailure(Landroid/os/Messenger;I)V
    .locals 6
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "requestId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 493
    if-eqz p1, :cond_0

    move-object v0, p0

    move v2, p1

    move v3, v1

    move-object v5, v4

    .line 494
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 496
    :cond_0
    return-void
.end method

.method private static sendGenericSuccess(Landroid/os/Messenger;I)V
    .locals 6
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "requestId"    # I

    .prologue
    const/4 v4, 0x0

    .line 499
    if-eqz p1, :cond_0

    .line 500
    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 502
    :cond_0
    return-void
.end method

.method static sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "what"    # I
    .param p2, "requestId"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "data"    # Landroid/os/Bundle;

    .prologue
    .line 506
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 507
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 508
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 509
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 510
    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 511
    invoke-virtual {v1, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 513
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not send message to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 514
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method findClient(Landroid/os/Messenger;)I
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 482
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 483
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 484
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 485
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->hasMessenger(Landroid/os/Messenger;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    .end local v0    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 483
    .restart local v0    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.MediaRouteProviderService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    if-nez v2, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->onCreateMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    .line 151
    .local v0, "provider":Landroid/support/v7/media/MediaRouteProvider;
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "providerPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".  Service package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_0
    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    .line 162
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    invoke-virtual {v2, v3}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 165
    .end local v0    # "provider":Landroid/support/v7/media/MediaRouteProvider;
    .end local v1    # "providerPackage":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveMessenger:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 169
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onBinderDied(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v1

    .line 219
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 220
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 221
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 222
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Binder died"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->dispose()V

    .line 226
    .end local v0    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :cond_1
    return-void
.end method

.method public abstract onCreateMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;
.end method

.method onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "routeId"    # Ljava/lang/String;
    .param p5, "routeGroupId"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 231
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0, p4, p5, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->createRouteController(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Route controller created, controllerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", routeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", routeGroupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 238
    const/4 v1, 0x1

    .line 241
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onRegisterClient(Landroid/os/Messenger;II)Z
    .locals 9
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "version"    # I

    .prologue
    const/4 v3, 0x1

    .line 181
    if-lt p3, v3, :cond_2

    .line 182
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v8

    .line 183
    .local v8, "index":I
    if-gez v8, :cond_2

    .line 184
    new-instance v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    invoke-direct {v6, p0, p1, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;I)V

    .line 185
    .local v6, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->register()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Registered, version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    if-eqz p2, :cond_1

    .line 191
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v7

    .line 192
    .local v7, "descriptor":Landroid/support/v7/media/MediaRouteProviderDescriptor;
    const/4 v1, 0x2

    .line 194
    invoke-direct {p0, v7, v6}, Landroid/support/v7/media/MediaRouteProviderService;->createDescriptorBundleForClient(Landroid/support/v7/media/MediaRouteProviderDescriptor;Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move v2, p2

    .line 192
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 200
    .end local v6    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .end local v7    # "descriptor":Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .end local v8    # "index":I
    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method onReleaseRouteController(Landroid/os/Messenger;II)Z
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I

    .prologue
    .line 246
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 247
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->releaseRouteController(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Route controller released"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", controllerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 254
    const/4 v1, 0x1

    .line 257
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z
    .locals 8
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v2

    .line 339
    .local v2, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v2, :cond_2

    .line 341
    invoke-virtual {v2, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v7

    .line 342
    .local v7, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v7, :cond_2

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "callback":Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
    if-eqz p2, :cond_0

    .line 345
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$1;

    .end local v0    # "callback":Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
    move-object v1, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/MediaRouteProviderService$1;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;ILandroid/content/Intent;Landroid/os/Messenger;I)V

    .line 382
    .restart local v0    # "callback":Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
    :cond_0
    invoke-virtual {v7, p4, v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 384
    const-string v1, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Route control request delivered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    const/4 v1, 0x1

    .line 391
    .end local v0    # "callback":Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
    .end local v7    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onSelectRoute(Landroid/os/Messenger;II)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I

    .prologue
    .line 262
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 263
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 266
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 268
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 269
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Route selected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 273
    const/4 v2, 0x1

    .line 276
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onSetDiscoveryRequest(Landroid/os/Messenger;ILandroid/support/v7/media/MediaRouteDiscoveryRequest;)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "request"    # Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .prologue
    .line 396
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v1

    .line 397
    .local v1, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {v1, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)Z

    move-result v0

    .line 399
    .local v0, "actuallyChanged":Z
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 400
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Set discovery request, request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actuallyChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", compositeDiscoveryRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 405
    const/4 v2, 0x1

    .line 407
    .end local v0    # "actuallyChanged":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onSetRouteVolume(Landroid/os/Messenger;III)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "volume"    # I

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 301
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 304
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 306
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 307
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Route volume changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 311
    const/4 v2, 0x1

    .line 314
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 177
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method onUnregisterClient(Landroid/os/Messenger;I)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v1

    .line 205
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 206
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 207
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 208
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->dispose()V

    .line 211
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 212
    const/4 v2, 0x1

    .line 214
    .end local v0    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onUnselectRoute(Landroid/os/Messenger;III)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "reason"    # I

    .prologue
    .line 281
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 282
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 285
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 287
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 288
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Route unselected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 292
    const/4 v2, 0x1

    .line 295
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onUpdateRouteVolume(Landroid/os/Messenger;III)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "delta"    # I

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 320
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 323
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 325
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 326
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Route volume updated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 330
    const/4 v2, 0x1

    .line 333
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method sendDescriptorChanged(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 9
    .param p1, "descriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .prologue
    const/4 v2, 0x0

    .line 411
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 412
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 413
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 414
    .local v6, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    iget-object v0, v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->mMessenger:Landroid/os/Messenger;

    const/4 v1, 0x5

    .line 415
    invoke-direct {p0, p1, v6}, Landroid/support/v7/media/MediaRouteProviderService;->createDescriptorBundleForClient(Landroid/support/v7/media/MediaRouteProviderDescriptor;Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    move v3, v2

    .line 414
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 416
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 417
    const-string v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": Sent descriptor change event, descriptor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 420
    .end local v6    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :cond_1
    return-void
.end method

.method updateCompositeDiscoveryRequest()Z
    .locals 7

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, "composite":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    const/4 v5, 0x0

    .line 446
    .local v5, "selectorBuilder":Landroid/support/v7/media/MediaRouteSelector$Builder;
    const/4 v0, 0x0

    .line 447
    .local v0, "activeScan":Z
    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 448
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 449
    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    iget-object v4, v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 450
    .local v4, "request":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    if-eqz v4, :cond_1

    .line 451
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 452
    :cond_0
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v6

    or-int/2addr v0, v6

    .line 453
    if-nez v1, :cond_2

    .line 454
    move-object v1, v4

    .line 448
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 456
    :cond_2
    if-nez v5, :cond_3

    .line 457
    new-instance v5, Landroid/support/v7/media/MediaRouteSelector$Builder;

    .end local v5    # "selectorBuilder":Landroid/support/v7/media/MediaRouteSelector$Builder;
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 459
    .restart local v5    # "selectorBuilder":Landroid/support/v7/media/MediaRouteSelector$Builder;
    :cond_3
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addSelector(Landroid/support/v7/media/MediaRouteSelector;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    goto :goto_1

    .line 463
    .end local v4    # "request":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    :cond_4
    if-eqz v5, :cond_5

    .line 464
    new-instance v1, Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .end local v1    # "composite":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;-><init>(Landroid/support/v7/media/MediaRouteSelector;Z)V

    .line 466
    .restart local v1    # "composite":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    :cond_5
    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eq v6, v1, :cond_7

    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 468
    invoke-virtual {v6, v1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 469
    :cond_6
    iput-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 470
    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v6, v1}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 471
    const/4 v6, 0x1

    .line 473
    :goto_2
    return v6

    :cond_7
    const/4 v6, 0x0

    goto :goto_2
.end method
