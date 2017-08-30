.class public Lcom/weirdvoice/service/receiver/DynamicReceiver4;
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

.field private service:Lcom/weirdvoice/service/SipService;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 2
    .param p1, "aService"    # Lcom/weirdvoice/service/SipService;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 65
    iput-boolean v1, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mConnected:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->hasStartedWifi:Z

    .line 91
    iput-object p1, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/service/receiver/DynamicReceiver4;Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/weirdvoice/service/receiver/DynamicReceiver4;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->dumpRoutes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/service/receiver/DynamicReceiver4;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/weirdvoice/service/receiver/DynamicReceiver4;)Lcom/weirdvoice/service/SipService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/weirdvoice/service/receiver/DynamicReceiver4;Landroid/net/NetworkInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->onConnectivityChanged(Landroid/net/NetworkInfo;Z)V

    return-void
.end method

.method private dumpRoutes()Ljava/lang/String;
    .locals 22

    .prologue
    .line 149
    const-string v16, ""

    .line 150
    .local v16, "routes":Ljava/lang/String;
    const/4 v9, 0x0

    .line 152
    .local v9, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    const-string v17, "/proc/net/route"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v9    # "fr":Ljava/io/FileReader;
    .local v10, "fr":Ljava/io/FileReader;
    if-eqz v10, :cond_0

    .line 154
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .local v4, "contentBuf":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 157
    .local v3, "buf":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-nez v14, :cond_2

    .line 160
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 161
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    .end local v3    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "contentBuf":Ljava/lang/StringBuffer;
    .end local v14    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v9, v10

    .line 177
    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :goto_1
    move-object/from16 v8, v16

    .line 178
    .local v8, "finalRoutes":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 179
    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 180
    .local v12, "items":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v7, "finalItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 182
    .local v14, "line":I
    array-length v0, v12

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 205
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 208
    .end local v7    # "finalItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "items":[Ljava/lang/String;
    .end local v14    # "line":I
    :cond_1
    return-object v8

    .line 158
    .end local v8    # "finalRoutes":Ljava/lang/String;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v4    # "contentBuf":Ljava/lang/StringBuffer;
    .restart local v10    # "fr":Ljava/io/FileReader;
    .local v14, "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 163
    .end local v3    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "contentBuf":Ljava/lang/StringBuffer;
    .end local v14    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v9, v10

    .line 164
    .end local v10    # "fr":Ljava/io/FileReader;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :goto_3
    :try_start_4
    const-string v17, "DynamicReceiver"

    const-string v18, "No route file found routes"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 170
    :catch_1
    move-exception v5

    .line 171
    .local v5, "e":Ljava/io/IOException;
    const-string v17, "DynamicReceiver"

    const-string v18, "Unable to close route file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 165
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 166
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v17, "DynamicReceiver"

    const-string v18, "Unable to read route file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 170
    :catch_3
    move-exception v5

    .line 171
    const-string v17, "DynamicReceiver"

    const-string v18, "Unable to close route file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 167
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 169
    :goto_5
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 173
    :goto_6
    throw v17

    .line 170
    :catch_4
    move-exception v5

    .line 171
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v18, "DynamicReceiver"

    const-string v19, "Unable to close route file"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 170
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v5

    .line 171
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v17, "DynamicReceiver"

    const-string v18, "Unable to close route file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_1

    .line 182
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v7    # "finalItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "finalRoutes":Ljava/lang/String;
    .restart local v12    # "items":[Ljava/lang/String;
    .local v14, "line":I
    :cond_3
    aget-object v11, v12, v17

    .line 183
    .local v11, "item":Ljava/lang/String;
    const/4 v2, 0x1

    .line 184
    .local v2, "addItem":Z
    if-lez v14, :cond_4

    .line 185
    const-string v19, "\t"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "ent":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v19, v0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 187
    const/16 v19, 0x7

    aget-object v15, v6, v19

    .line 188
    .local v15, "maskStr":Ljava/lang/String;
    const-string v19, "^[0-9A-F]{8}$"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 189
    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 190
    .local v13, "lastMaskPart":I
    const/16 v19, 0xc0

    move/from16 v0, v19

    if-le v13, v0, :cond_4

    .line 192
    const/4 v2, 0x0

    .line 200
    .end local v6    # "ent":[Ljava/lang/String;
    .end local v13    # "lastMaskPart":I
    .end local v15    # "maskStr":Ljava/lang/String;
    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    .line 201
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 182
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 195
    .restart local v6    # "ent":[Ljava/lang/String;
    .restart local v15    # "maskStr":Ljava/lang/String;
    :cond_6
    const-string v19, "DynamicReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "The route mask does not looks like a mask"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 167
    .end local v2    # "addItem":Z
    .end local v6    # "ent":[Ljava/lang/String;
    .end local v7    # "finalItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "finalRoutes":Ljava/lang/String;
    .end local v9    # "fr":Ljava/io/FileReader;
    .end local v11    # "item":Ljava/lang/String;
    .end local v12    # "items":[Ljava/lang/String;
    .end local v14    # "line":I
    .end local v15    # "maskStr":Ljava/lang/String;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_5

    .line 165
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_4

    .line 163
    :catch_7
    move-exception v5

    goto/16 :goto_3
.end method

.method private onConnectivityChanged(Landroid/net/NetworkInfo;Z)V
    .locals 8
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isSticky"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 227
    :cond_0
    iget-object v5, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 228
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 231
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v5}, Lcom/weirdvoice/service/SipService;->isConnectivityValid()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 232
    .local v1, "connected":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "networkType":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->dumpRoutes()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "currentRoutes":Ljava/lang/String;
    iget-object v6, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    monitor-enter v6

    .line 236
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    .line 235
    .local v4, "oldRoutes":Ljava/lang/String;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    iget-boolean v5, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mConnected:Z

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 268
    :cond_2
    :goto_2
    return-void

    .line 231
    .end local v1    # "connected":Z
    .end local v2    # "currentRoutes":Ljava/lang/String;
    .end local v3    # "networkType":Ljava/lang/String;
    .end local v4    # "oldRoutes":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 232
    .restart local v1    # "connected":Z
    :cond_4
    const-string v3, "null"

    goto :goto_1

    .line 235
    .restart local v2    # "currentRoutes":Ljava/lang/String;
    .restart local v3    # "networkType":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 243
    .restart local v4    # "oldRoutes":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/weirdvoice/utils/Log;->getLogLevel()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_6

    .line 244
    iget-object v5, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 245
    const-string v5, "DynamicReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onConnectivityChanged(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 246
    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    monitor-enter v6

    .line 253
    :try_start_2
    iput-object v2, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    .line 252
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    iput-boolean v1, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mConnected:Z

    .line 256
    iput-object v3, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    .line 258
    if-nez p2, :cond_2

    .line 259
    if-eqz v1, :cond_8

    .line 260
    iget-object v5, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v5}, Lcom/weirdvoice/service/SipService;->restartSipStack()V

    goto :goto_2

    .line 248
    :cond_7
    const-string v5, "DynamicReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Route changed : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 252
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 262
    :cond_8
    const-string v5, "DynamicReceiver"

    const-string v6, "We are not connected, stop"

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v5, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v5}, Lcom/weirdvoice/service/SipService;->stopSipStack()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v5}, Lcom/weirdvoice/service/SipService;->stopSelf()V

    goto/16 :goto_2
.end method

.method private onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isSticky"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "action":Ljava/lang/String;
    const-string v7, "DynamicReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Internal receive "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 117
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 118
    .local v5, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 119
    .local v4, "activeNetwork":Landroid/net/NetworkInfo;
    invoke-direct {p0, v4, p3}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->onConnectivityChanged(Landroid/net/NetworkInfo;Z)V

    .line 144
    .end local v4    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v7, "com.weirdvoice.service.ACCOUNT_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 121
    const-string v7, "id"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 123
    .local v2, "accountId":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    .line 124
    iget-object v7, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v7, v2, v3}, Lcom/weirdvoice/service/SipService;->getAccount(J)Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 125
    .local v0, "account":Lcom/weirdvoice/api/SipProfile;
    if-eqz v0, :cond_0

    .line 126
    const-string v7, "DynamicReceiver"

    const-string v8, "Enqueue set account registration"

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v8, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    iget-boolean v7, v0, Lcom/weirdvoice/api/SipProfile;->active:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    const/4 v9, 0x1

    invoke-virtual {v8, v0, v7, v9}, Lcom/weirdvoice/service/SipService;->setAccountRegistration(Lcom/weirdvoice/api/SipProfile;IZ)Z

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 130
    .end local v0    # "account":Lcom/weirdvoice/api/SipProfile;
    .end local v2    # "accountId":J
    :cond_3
    const-string v7, "com.weirdvoice.service.ACCOUNT_DELETED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 131
    const-string v7, "id"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 132
    .restart local v2    # "accountId":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    .line 133
    new-instance v6, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v6}, Lcom/weirdvoice/api/SipProfile;-><init>()V

    .line 134
    .local v6, "fakeProfile":Lcom/weirdvoice/api/SipProfile;
    iput-wide v2, v6, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 135
    iget-object v7, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v6, v8, v9}, Lcom/weirdvoice/service/SipService;->setAccountRegistration(Lcom/weirdvoice/api/SipProfile;IZ)Z

    goto :goto_0

    .line 137
    .end local v2    # "accountId":J
    .end local v6    # "fakeProfile":Lcom/weirdvoice/api/SipProfile;
    :cond_4
    const-string v7, "com.weirdvoice.service.ACTION_SIP_CAN_BE_STOPPED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 138
    iget-object v7, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v7}, Lcom/weirdvoice/service/SipService;->cleanStop()V

    goto :goto_0

    .line 139
    :cond_5
    const-string v7, "com.weirdvoice.service.ACTION_SIP_REQUEST_RESTART"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 140
    iget-object v7, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v7}, Lcom/weirdvoice/service/SipService;->restartSipStack()V

    goto :goto_0

    .line 141
    :cond_6
    const-string v7, "vpn.connectivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 142
    const/4 v7, 0x0

    invoke-direct {p0, v7, p3}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->onConnectivityChanged(Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public compatIsInitialStickyBroadcast(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 81
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-boolean v1, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->hasStartedWifi:Z

    if-nez v1, :cond_0

    .line 83
    iput-boolean v0, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->hasStartedWifi:Z

    .line 87
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
    .line 97
    iget-object v0, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/receiver/DynamicReceiver4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/weirdvoice/service/receiver/DynamicReceiver4$1;-><init>(Lcom/weirdvoice/service/receiver/DynamicReceiver4;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public startMonitoring()V
    .locals 6

    .prologue
    .line 273
    iget-object v1, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v1

    const-string v2, "network_route_polling"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, "pollingIntervalMin":I
    const-string v1, "DynamicReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start monitoring of route file ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-lez v0, :cond_0

    .line 277
    new-instance v1, Ljava/util/Timer;

    const-string v2, "RouteChangeMonitor"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    .line 278
    iget-object v1, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    new-instance v2, Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;

    invoke-direct {v2, p0}, Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;-><init>(Lcom/weirdvoice/service/receiver/DynamicReceiver4;)V

    .line 296
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    mul-int/lit8 v4, v0, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 278
    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 298
    :cond_0
    return-void
.end method

.method public stopMonitoring()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 303
    iget-object v0, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    .line 306
    :cond_0
    return-void
.end method
