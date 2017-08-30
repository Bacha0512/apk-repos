.class public Lorg/abtollc/service/receiver/DynamicReceiver4;
.super Landroid/content/BroadcastReceiver;
.source "DynamicReceiver4.java"


# static fields
.field public static final ACTION_VPN_CONNECTIVITY:Ljava/lang/String; = "vpn.connectivity"

.field public static final BROADCAST_CONNECTION_STATE:Ljava/lang/String; = "connection_state"

.field private static final PROC_NET_ROUTE:Ljava/lang/String; = "/proc/net/route"

.field private static final THIS_FILE:Ljava/lang/String; = "DynamicReceiver"


# instance fields
.field private hasStartedWifi:Z

.field private mConnected:Z

.field private mNetworkType:Ljava/lang/String;

.field private mRoutes:Ljava/lang/String;

.field private pollingTimer:Ljava/util/Timer;

.field private service:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method public constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 2
    .param p1, "aService"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    iput-boolean v1, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mConnected:Z

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->hasStartedWifi:Z

    .line 69
    iput-object p1, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/abtollc/service/receiver/DynamicReceiver4;Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/service/receiver/DynamicReceiver4;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/abtollc/service/receiver/DynamicReceiver4;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/abtollc/service/receiver/DynamicReceiver4;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/service/receiver/DynamicReceiver4;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/abtollc/service/receiver/DynamicReceiver4;->dumpRoutes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/abtollc/service/receiver/DynamicReceiver4;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/service/receiver/DynamicReceiver4;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/abtollc/service/receiver/DynamicReceiver4;Landroid/net/NetworkInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/service/receiver/DynamicReceiver4;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/abtollc/service/receiver/DynamicReceiver4;->onConnectivityChanged(Landroid/net/NetworkInfo;Z)V

    return-void
.end method

.method static synthetic access$400(Lorg/abtollc/service/receiver/DynamicReceiver4;)Lorg/abtollc/service/ABTOSipService;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/service/receiver/DynamicReceiver4;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    return-object v0
.end method

.method private dumpRoutes()Ljava/lang/String;
    .locals 10

    .prologue
    .line 120
    const-string v6, ""

    .line 121
    .local v6, "routes":Ljava/lang/String;
    const/4 v3, 0x0

    .line 123
    .local v3, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v7, "/proc/net/route"

    invoke-direct {v4, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v3    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    if-eqz v4, :cond_1

    .line 125
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v1, "contentBuf":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    .local v0, "buf":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 133
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v1    # "contentBuf":Ljava/lang/StringBuffer;
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 134
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    const-string v7, "DynamicReceiver"

    const-string v8, "No route file found routes"

    invoke-static {v7, v8, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 145
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-object v6

    .line 131
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "contentBuf":Ljava/lang/StringBuffer;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 139
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v1    # "contentBuf":Ljava/lang/StringBuffer;
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v3, v4

    .line 142
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 140
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "DynamicReceiver"

    const-string v8, "Unable to close route file"

    invoke-static {v7, v8, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 143
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 140
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "DynamicReceiver"

    const-string v8, "Unable to close route file"

    invoke-static {v7, v8, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 136
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "DynamicReceiver"

    const-string v8, "Unable to read route file"

    invoke-static {v7, v8, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 140
    :catch_4
    move-exception v2

    .line 141
    const-string v7, "DynamicReceiver"

    const-string v8, "Unable to close route file"

    invoke-static {v7, v8, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 139
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 142
    :goto_5
    throw v7

    .line 140
    :catch_5
    move-exception v2

    .line 141
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "DynamicReceiver"

    const-string v9, "Unable to close route file"

    invoke-static {v8, v9, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 135
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 133
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method private onConnectivityChanged(Landroid/net/NetworkInfo;Z)V
    .locals 9
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isSticky"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 164
    :cond_0
    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 165
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 168
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v6}, Lorg/abtollc/service/ABTOSipService;->isConnectivityValid()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    .line 169
    .local v1, "connected":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "networkType":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lorg/abtollc/service/receiver/DynamicReceiver4;->dumpRoutes()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "currentRoutes":Ljava/lang/String;
    iget-object v7, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    monitor-enter v7

    .line 173
    :try_start_0
    iget-object v5, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    .line 174
    .local v5, "oldRoutes":Ljava/lang/String;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-boolean v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mConnected:Z

    if-ne v1, v6, :cond_5

    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 209
    :cond_2
    :goto_2
    return-void

    .line 168
    .end local v1    # "connected":Z
    .end local v2    # "currentRoutes":Ljava/lang/String;
    .end local v4    # "networkType":Ljava/lang/String;
    .end local v5    # "oldRoutes":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 169
    .restart local v1    # "connected":Z
    :cond_4
    const-string v4, "null"

    goto :goto_1

    .line 174
    .restart local v2    # "currentRoutes":Ljava/lang/String;
    .restart local v4    # "networkType":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 180
    .restart local v5    # "oldRoutes":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lorg/abtollc/utils/Log;->getLogLevel()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_6

    .line 181
    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 182
    const-string v6, "DynamicReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConnectivityChanged(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_6
    :goto_3
    iget-object v7, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    monitor-enter v7

    .line 190
    :try_start_2
    iput-object v2, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    .line 191
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    iput-boolean v1, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mConnected:Z

    .line 193
    iput-object v4, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    .line 195
    if-nez p2, :cond_2

    .line 196
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v3, "data":Landroid/os/Bundle;
    const-string v6, "network_type"

    iget-object v7, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v6, "is_connected"

    iget-boolean v7, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mConnected:Z

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    const/16 v7, 0xa

    invoke-virtual {v6, v7, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 200
    if-eqz v1, :cond_8

    .line 201
    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v6}, Lorg/abtollc/service/ABTOSipService;->restartSipStack()V

    goto :goto_2

    .line 185
    .end local v3    # "data":Landroid/os/Bundle;
    :cond_7
    const-string v6, "DynamicReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Route changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 191
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 203
    .restart local v3    # "data":Landroid/os/Bundle;
    :cond_8
    const-string v6, "DynamicReceiver"

    const-string v7, "We are not connected, stop"

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v6}, Lorg/abtollc/service/ABTOSipService;->stopSipStack()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 205
    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v6}, Lorg/abtollc/service/ABTOSipService;->stopSelf()V

    goto/16 :goto_2
.end method

.method private onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isSticky"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v7, 0x1

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "action":Ljava/lang/String;
    const-string v6, "DynamicReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Internal receive "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    const-string v6, "connectivity"

    .line 95
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 96
    .local v5, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 97
    .local v4, "activeNetwork":Landroid/net/NetworkInfo;
    invoke-direct {p0, v4, p3}, Lorg/abtollc/service/receiver/DynamicReceiver4;->onConnectivityChanged(Landroid/net/NetworkInfo;Z)V

    .line 115
    .end local v4    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v6, "org.abtollc.service.ACCOUNT_CHANGED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    const-string v6, "id"

    invoke-virtual {p2, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 101
    .local v2, "accountId":J
    cmp-long v6, v2, v10

    if-eqz v6, :cond_0

    .line 102
    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v6, v2, v3}, Lorg/abtollc/service/ABTOSipService;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 103
    .local v0, "account":Lorg/abtollc/api/SipProfile;
    if-eqz v0, :cond_0

    .line 104
    const-string v6, "DynamicReceiver"

    const-string v8, "Enqueue set account registration"

    invoke-static {v6, v8}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v8, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    iget-boolean v6, v0, Lorg/abtollc/api/SipProfile;->active:Z

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v8, v0, v6, v7}, Lorg/abtollc/service/ABTOSipService;->setAccountRegistration(Lorg/abtollc/api/SipProfile;IZ)Z

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 108
    .end local v0    # "account":Lorg/abtollc/api/SipProfile;
    .end local v2    # "accountId":J
    :cond_3
    const-string v6, "org.abtollc.service.ACTION_SIP_CAN_BE_STOPPED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 109
    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v6}, Lorg/abtollc/service/ABTOSipService;->cleanStop()V

    goto :goto_0

    .line 110
    :cond_4
    const-string v6, "org.abtollc.service.ACTION_SIP_REQUEST_RESTART"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 111
    iget-object v6, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v6}, Lorg/abtollc/service/ABTOSipService;->restartSipStack()V

    goto :goto_0

    .line 112
    :cond_5
    const-string v6, "vpn.connectivity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    const/4 v6, 0x0

    invoke-direct {p0, v6, p3}, Lorg/abtollc/service/receiver/DynamicReceiver4;->onConnectivityChanged(Landroid/net/NetworkInfo;Z)V

    goto :goto_0
.end method


# virtual methods
.method public compatIsInitialStickyBroadcast(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 59
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-boolean v1, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->hasStartedWifi:Z

    if-nez v1, :cond_0

    .line 61
    iput-boolean v0, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->hasStartedWifi:Z

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/receiver/DynamicReceiver4$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/abtollc/service/receiver/DynamicReceiver4$1;-><init>(Lorg/abtollc/service/receiver/DynamicReceiver4;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public startMonitoring()V
    .locals 6

    .prologue
    .line 214
    iget-object v1, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v1

    const-string v2, "network_route_polling"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, "pollingIntervalMin":I
    const-string v1, "DynamicReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start monitoring of route file ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    if-lez v0, :cond_0

    .line 218
    new-instance v1, Ljava/util/Timer;

    const-string v2, "RouteChangeMonitor"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    .line 219
    iget-object v1, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    new-instance v2, Lorg/abtollc/service/receiver/DynamicReceiver4$2;

    invoke-direct {v2, p0}, Lorg/abtollc/service/receiver/DynamicReceiver4$2;-><init>(Lorg/abtollc/service/receiver/DynamicReceiver4;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    mul-int/lit8 v4, v0, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 239
    :cond_0
    return-void
.end method

.method public stopMonitoring()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 244
    iget-object v0, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    .line 247
    :cond_0
    return-void
.end method
