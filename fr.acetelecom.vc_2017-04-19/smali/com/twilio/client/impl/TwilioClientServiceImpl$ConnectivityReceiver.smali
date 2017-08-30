.class Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/TwilioClientServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# static fields
.field private static final RECONNECT_THRESHOLD:I = 0x4e20


# instance fields
.field private connected:Z

.field private curNetworkType:I

.field private lastConnectedNetworkType:I

.field private lastDisconnectTime:J

.field private lastWifiSSID:Ljava/lang/String;

.field private pendingNetChange:Z

.field final synthetic this$0:Lcom/twilio/client/impl/TwilioClientServiceImpl;


# direct methods
.method public constructor <init>(Lcom/twilio/client/impl/TwilioClientServiceImpl;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->this$0:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->connected:Z

    iput v2, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->curNetworkType:I

    iput v2, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastConnectedNetworkType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastDisconnectTime:J

    invoke-direct {p0}, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->updateNetworkState()Z

    iget v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->curNetworkType:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastDisconnectTime:J

    :cond_0
    return-void
.end method

.method private updateNetworkState()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    iget v1, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastConnectedNetworkType:I

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->this$0:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    # getter for: Lcom/twilio/client/impl/TwilioClientServiceImpl;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->access$000(Lcom/twilio/client/impl/TwilioClientServiceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->curNetworkType:I

    iput v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastConnectedNetworkType:I

    :goto_0
    iget v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->curNetworkType:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastConnectedNetworkType:I

    if-eq v0, v1, :cond_3

    move v1, v2

    :goto_1
    iget v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->curNetworkType:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->this$0:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    # getter for: Lcom/twilio/client/impl/TwilioClientServiceImpl;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->access$000(Lcom/twilio/client/impl/TwilioClientServiceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastWifiSSID:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastWifiSSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastWifiSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastWifiSSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_2
    # getter for: Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;
    invoke-static {}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->access$100()Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got wifi SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastWifiSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    :goto_3
    return v1

    :cond_2
    iput v4, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->curNetworkType:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_4
    iput-object v5, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastWifiSSID:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iput-object v5, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastWifiSSID:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isFailover"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # getter for: Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;
    invoke-static {}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->access$100()Lcom/twilio/client/impl/logging/Logger;

    move-result-object v5

    const-string v6, "got connectivity broadcast: haveConn=%b, reason=%s, isFailover=%b"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object v3, v7, v1

    const/4 v1, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->connected:Z

    iput-boolean v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->connected:Z

    # getter for: Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;
    invoke-static {}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->access$100()Lcom/twilio/client/impl/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old net type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->curNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->updateNetworkState()Z

    move-result v3

    # getter for: Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;
    invoke-static {}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->access$100()Lcom/twilio/client/impl/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new net type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->curNetworkType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    # getter for: Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;
    invoke-static {}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->access$100()Lcom/twilio/client/impl/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NET CHANGE EVENT: connected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", netTypeChanged="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastDisconnectTime:J

    iput-boolean v3, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->pendingNetChange:Z

    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    # getter for: Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;
    invoke-static {}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->access$100()Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switched networks to type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->curNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->lastDisconnectTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x4e20

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->this$0:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    # invokes: Lcom/twilio/client/impl/TwilioClientServiceImpl;->needsReconnect()V
    invoke-static {v0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->access$200(Lcom/twilio/client/impl/TwilioClientServiceImpl;)V

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    iget-boolean v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->pendingNetChange:Z

    if-eqz v0, :cond_2

    :cond_6
    iput-boolean v2, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->pendingNetChange:Z

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;->this$0:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    # invokes: Lcom/twilio/client/impl/TwilioClientServiceImpl;->needsReconnect()V
    invoke-static {v0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->access$200(Lcom/twilio/client/impl/TwilioClientServiceImpl;)V

    goto :goto_2
.end method
