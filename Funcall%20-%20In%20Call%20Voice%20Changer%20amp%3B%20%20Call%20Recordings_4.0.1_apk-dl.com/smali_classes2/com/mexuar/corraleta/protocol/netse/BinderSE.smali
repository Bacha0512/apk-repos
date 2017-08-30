.class public Lcom/mexuar/corraleta/protocol/netse/BinderSE;
.super Lcom/mexuar/corraleta/protocol/Binder;
.source "BinderSE.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final BUFFSZ:I = 0x1000

.field static final IAX2SOC:I = 0x11d9


# instance fields
.field private _a8:Lcom/mexuar/corraleta/audio/AudioInterface;

.field private _done:Z

.field private _friends:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/mexuar/corraleta/protocol/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private _host:Ljava/lang/String;

.field private _listener:Ljava/lang/Thread;

.field private _lsoc:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mexuar/corraleta/audio/AudioInterface;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "a8"    # Lcom/mexuar/corraleta/audio/AudioInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/Binder;-><init>()V

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_done:Z

    .line 47
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_friends:Ljava/util/Hashtable;

    .line 64
    :try_start_0
    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "jversion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Java version = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "jversion":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_host:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_lsoc:Ljava/net/DatagramSocket;

    .line 74
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Binder Listen"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_listener:Ljava/lang/Thread;

    .line 75
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_listener:Ljava/lang/Thread;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 76
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_listener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    iput-object p2, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_a8:Lcom/mexuar/corraleta/audio/AudioInterface;

    .line 78
    return-void

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private findFriend(Ljava/net/InetAddress;)Lcom/mexuar/corraleta/protocol/Friend;
    .locals 2
    .param p1, "iad"    # Ljava/net/InetAddress;

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "ret":Lcom/mexuar/corraleta/protocol/Friend;
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_friends:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Lcom/mexuar/corraleta/protocol/Friend;
    check-cast v0, Lcom/mexuar/corraleta/protocol/Friend;

    .line 289
    .restart local v0    # "ret":Lcom/mexuar/corraleta/protocol/Friend;
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    sget v6, Lcom/mexuar/corraleta/protocol/Log;->ALL:I

    invoke-static {v6}, Lcom/mexuar/corraleta/protocol/Log;->setLevel(I)V

    .line 91
    const-string v4, "lef.westhawk.co.uk"

    .line 92
    .local v4, "host":Ljava/lang/String;
    new-instance v0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;-><init>(Ljava/lang/String;Lcom/mexuar/corraleta/audio/AudioInterface;)V

    .line 93
    .local v0, "binder1":Lcom/mexuar/corraleta/protocol/netse/BinderSE;
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :try_start_1
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 97
    .local v5, "iad":Ljava/net/InetAddress;
    new-instance v3, Lcom/mexuar/corraleta/protocol/Friend;

    invoke-direct {v3, v0, v4}, Lcom/mexuar/corraleta/protocol/Friend;-><init>(Lcom/mexuar/corraleta/protocol/Binder;Ljava/lang/String;)V

    .line 98
    .local v3, "f":Lcom/mexuar/corraleta/protocol/Friend;
    iget-object v6, v0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_friends:Ljava/util/Hashtable;

    invoke-virtual {v6, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v3}, Lcom/mexuar/corraleta/protocol/Friend;->checkHostReachable()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    .end local v0    # "binder1":Lcom/mexuar/corraleta/protocol/netse/BinderSE;
    .end local v3    # "f":Lcom/mexuar/corraleta/protocol/Friend;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "iad":Ljava/net/InetAddress;
    :goto_0
    return-void

    .line 105
    .restart local v0    # "binder1":Lcom/mexuar/corraleta/protocol/netse/BinderSE;
    .restart local v4    # "host":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 107
    .local v2, "ex1":Ljava/net/UnknownHostException;
    :try_start_2
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 109
    .end local v0    # "binder1":Lcom/mexuar/corraleta/protocol/netse/BinderSE;
    .end local v2    # "ex1":Ljava/net/UnknownHostException;
    .end local v4    # "host":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 111
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAudioFace()Lcom/mexuar/corraleta/audio/AudioInterface;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_a8:Lcom/mexuar/corraleta/audio/AudioInterface;

    return-object v0
.end method

.method public getGuiEventSender(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    .locals 0
    .param p1, "_gui"    # Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    .prologue
    .line 360
    return-object p1
.end method

.method protected packetDump([BILjava/net/InetAddress;IZ)V
    .locals 6
    .param p1, "bs"    # [B
    .param p2, "i"    # I
    .param p3, "a"    # Ljava/net/InetAddress;
    .param p4, "i1"    # I
    .param p5, "in"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xa

    .line 335
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 336
    .local v1, "os":Ljava/lang/StringBuffer;
    if-eqz p5, :cond_0

    .line 338
    const-string v2, "Packet got from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    :goto_0
    const-string v2, "Packet size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    new-array v0, p2, [B

    .line 345
    .local v0, "bf":[B
    invoke-static {p1, v5, v0, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v2}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->enHex([BLjava/lang/Character;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 349
    return-void

    .line 341
    .end local v0    # "bf":[B
    :cond_0
    const-string v2, "Packet sent to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/mexuar/corraleta/protocol/ProtocolEventListener;Z)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "gui"    # Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    .param p4, "wantIncoming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_host:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 133
    .local v1, "iad":Ljava/net/InetAddress;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registering with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, v1}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->findFriend(Ljava/net/InetAddress;)Lcom/mexuar/corraleta/protocol/Friend;

    move-result-object v0

    .line 135
    .local v0, "f":Lcom/mexuar/corraleta/protocol/Friend;
    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/mexuar/corraleta/protocol/Friend;

    .end local v0    # "f":Lcom/mexuar/corraleta/protocol/Friend;
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_host:Ljava/lang/String;

    invoke-direct {v0, p0, v2, p3}, Lcom/mexuar/corraleta/protocol/Friend;-><init>(Lcom/mexuar/corraleta/protocol/Binder;Ljava/lang/String;Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)V

    .line 138
    .restart local v0    # "f":Lcom/mexuar/corraleta/protocol/Friend;
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_friends:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    if-eqz p4, :cond_2

    .line 143
    invoke-virtual {v0, p1, p2}, Lcom/mexuar/corraleta/protocol/Friend;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    if-eqz p3, :cond_1

    .line 150
    const/4 v2, 0x1

    invoke-interface {p3, v0, v2}, Lcom/mexuar/corraleta/protocol/ProtocolEventListener;->registered(Lcom/mexuar/corraleta/protocol/Friend;Z)V

    goto :goto_0
.end method

.method public removeFriend(Ljava/lang/String;)Lcom/mexuar/corraleta/protocol/Friend;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "iad":Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 305
    .local v3, "ret":Lcom/mexuar/corraleta/protocol/Friend;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 306
    iget-object v4, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_friends:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/mexuar/corraleta/protocol/Friend;

    move-object v3, v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-object v3

    .line 307
    :catch_0
    move-exception v1

    .line 309
    .local v1, "ex":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x1000

    .line 216
    new-array v0, v10, [B

    .line 217
    .local v0, "buff":[B
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_done:Z

    if-eqz v8, :cond_1

    .line 245
    iget-object v8, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_friends:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 246
    .local v5, "fall":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/mexuar/corraleta/protocol/Friend;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_2

    .line 251
    return-void

    .line 219
    .end local v5    # "fall":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/mexuar/corraleta/protocol/Friend;>;"
    :cond_1
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v0, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 222
    .local v2, "dgp":Ljava/net/DatagramPacket;
    :try_start_0
    iget-object v8, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_lsoc:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 223
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 224
    .local v6, "iad":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    .line 225
    .local v7, "len":I
    new-array v1, v7, [B

    .line 226
    .local v1, "data":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v8, v1, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    invoke-direct {p0, v6}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->findFriend(Ljava/net/InetAddress;)Lcom/mexuar/corraleta/protocol/Friend;

    move-result-object v4

    .line 229
    .local v4, "f":Lcom/mexuar/corraleta/protocol/Friend;
    if-eqz v4, :cond_0

    .line 231
    invoke-virtual {v4, v1}, Lcom/mexuar/corraleta/protocol/Friend;->recv([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v1    # "data":[B
    .end local v4    # "f":Lcom/mexuar/corraleta/protocol/Friend;
    .end local v6    # "iad":Ljava/net/InetAddress;
    .end local v7    # "len":I
    :catch_0
    move-exception v3

    .line 238
    .local v3, "ex":Ljava/io/IOException;
    iget-boolean v8, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_done:Z

    if-nez v8, :cond_0

    .line 240
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .end local v2    # "dgp":Ljava/net/DatagramPacket;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v5    # "fall":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/mexuar/corraleta/protocol/Friend;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mexuar/corraleta/protocol/Friend;

    .line 249
    .restart local v4    # "f":Lcom/mexuar/corraleta/protocol/Friend;
    invoke-virtual {v4}, Lcom/mexuar/corraleta/protocol/Friend;->stop()V

    goto :goto_1
.end method

.method public send(Ljava/lang/String;Lcom/mexuar/corraleta/util/ByteBuffer;)V
    .locals 6
    .param p1, "h"    # Ljava/lang/String;
    .param p2, "b"    # Lcom/mexuar/corraleta/util/ByteBuffer;

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 267
    .local v0, "a":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 268
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-virtual {p2}, Lcom/mexuar/corraleta/util/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/mexuar/corraleta/util/ByteBuffer;->position()I

    move-result v4

    const/16 v5, 0x11d9

    invoke-direct {v2, v3, v4, v0, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 270
    .local v2, "p":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_lsoc:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v2    # "p":Ljava/net/DatagramPacket;
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v1

    .line 274
    .local v1, "ex1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_done:Z

    .line 188
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_listener:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_lsoc:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 191
    const-string v1, "Closed Socket"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_listener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 195
    const-string v1, "Joined binder thread"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_listener:Ljava/lang/Thread;

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_a8:Lcom/mexuar/corraleta/audio/AudioInterface;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_a8:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v1}, Lcom/mexuar/corraleta/audio/AudioInterface;->cleanUp()V

    .line 207
    :cond_1
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregister(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)V
    .locals 4
    .param p1, "gui"    # Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_host:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 166
    .local v1, "iad":Ljava/net/InetAddress;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregistering with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->_host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, v1}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->findFriend(Ljava/net/InetAddress;)Lcom/mexuar/corraleta/protocol/Friend;

    move-result-object v0

    .line 168
    .local v0, "f":Lcom/mexuar/corraleta/protocol/Friend;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Friend;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Friend;->unregister()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-eqz p1, :cond_0

    .line 177
    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/mexuar/corraleta/protocol/ProtocolEventListener;->registered(Lcom/mexuar/corraleta/protocol/Friend;Z)V

    goto :goto_0
.end method
