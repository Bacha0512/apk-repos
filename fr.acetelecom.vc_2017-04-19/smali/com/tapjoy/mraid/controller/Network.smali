.class public Lcom/tapjoy/mraid/controller/Network;
.super Lcom/tapjoy/mraid/controller/Abstract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/controller/Network$1;
    }
.end annotation


# instance fields
.field private c:Landroid/net/ConnectivityManager;

.field private d:I

.field private e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

.field private f:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->c:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public getNetwork()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "unknown"

    if-nez v0, :cond_0

    const-string v0, "offline"

    :goto_1
    const-string v1, "MRAID Network"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNetwork: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/tapjoy/mraid/controller/Network$1;->a:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cell"

    goto :goto_1

    :pswitch_0
    const-string v0, "unknown"

    goto :goto_1

    :pswitch_1
    const-string v0, "offline"

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "wifi"

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectionChanged()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireChangeEvent({ network: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/controller/Network;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID Network"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public startNetworkListener()V
    .locals 3

    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;-><init>(Lcom/tapjoy/mraid/controller/Network;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->f:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->f:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Network;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopAllListeners()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopNetworkListener()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/tapjoy/mraid/controller/Network;->e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    iput-object v2, p0, Lcom/tapjoy/mraid/controller/Network;->f:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method
