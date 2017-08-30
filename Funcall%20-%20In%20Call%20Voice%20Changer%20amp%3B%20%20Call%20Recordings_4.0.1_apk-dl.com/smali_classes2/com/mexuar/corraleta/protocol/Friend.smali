.class public Lcom/mexuar/corraleta/protocol/Friend;
.super Ljava/util/TimerTask;
.source "Friend.java"


# instance fields
.field private _awaitingAck:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Lcom/mexuar/corraleta/protocol/Call;",
            ">;"
        }
    .end annotation
.end field

.field private _binder:Lcom/mexuar/corraleta/protocol/Binder;

.field private _cno:C

.field private _gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

.field private _hostReachable:Z

.field private _hostReachableRoundTrip:I

.field private _iad:Ljava/lang/String;

.field private _password:Ljava/lang/String;

.field private _pokecall:Lcom/mexuar/corraleta/protocol/Call;

.field private _regTick:Ljava/util/Timer;

.field private _regcall:Lcom/mexuar/corraleta/protocol/Call;

.field private _registered:Z

.field private _scalls:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Lcom/mexuar/corraleta/protocol/Call;",
            ">;"
        }
    .end annotation
.end field

.field private _username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Binder;Ljava/lang/String;)V
    .locals 5
    .param p1, "bi"    # Lcom/mexuar/corraleta/protocol/Binder;
    .param p2, "them"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 39
    new-instance v2, Ljava/util/Hashtable;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_scalls:Ljava/util/Hashtable;

    .line 40
    new-instance v2, Ljava/util/Hashtable;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_awaitingAck:Ljava/util/Hashtable;

    .line 44
    iput-char v4, p0, Lcom/mexuar/corraleta/protocol/Friend;->_cno:C

    .line 46
    iput-boolean v4, p0, Lcom/mexuar/corraleta/protocol/Friend;->_registered:Z

    .line 65
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_binder:Lcom/mexuar/corraleta/protocol/Binder;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    .local v0, "now":J
    const-wide/32 v2, 0x7fff00

    and-long/2addr v2, v0

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_cno:C

    .line 68
    iput-object p2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_iad:Ljava/lang/String;

    .line 69
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regTick:Ljava/util/Timer;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Friend "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/Friend;->_iad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Binder;Ljava/lang/String;Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)V
    .locals 0
    .param p1, "bi"    # Lcom/mexuar/corraleta/protocol/Binder;
    .param p2, "them"    # Ljava/lang/String;
    .param p3, "ear"    # Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/mexuar/corraleta/protocol/Friend;-><init>(Lcom/mexuar/corraleta/protocol/Binder;Ljava/lang/String;)V

    .line 86
    iput-object p3, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    .line 87
    return-void
.end method

.method private addNewWaitingAck(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 2
    .param p1, "ncall"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->getLno()Ljava/lang/Character;

    move-result-object v0

    .line 292
    .local v0, "lno":Ljava/lang/Character;
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_awaitingAck:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

.method private findWaiting(Ljava/lang/Character;)Lcom/mexuar/corraleta/protocol/Call;
    .locals 2
    .param p1, "ourno"    # Ljava/lang/Character;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_awaitingAck:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mexuar/corraleta/protocol/Call;

    .line 228
    .local v0, "ret":Lcom/mexuar/corraleta/protocol/Call;
    return-object v0
.end method

.method private tellGuiHungup(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "ca"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_pokecall:Lcom/mexuar/corraleta/protocol/Call;

    if-ne p1, v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_pokecall:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->isTimedout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_pokecall:Lcom/mexuar/corraleta/protocol/Call;

    .line 367
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/mexuar/corraleta/protocol/Friend;->setPong(ZI)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->isForReg()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->isForUnReg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_binder:Lcom/mexuar/corraleta/protocol/Binder;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    invoke-virtual {v1, v2}, Lcom/mexuar/corraleta/protocol/Binder;->getGuiEventSender(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    move-result-object v0

    .line 372
    .local v0, "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    invoke-interface {v0, p1}, Lcom/mexuar/corraleta/protocol/ProtocolEventListener;->hungUp(Lcom/mexuar/corraleta/protocol/Call;)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized addCall(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 2
    .param p1, "ncall"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->getRno()Ljava/lang/Character;

    move-result-object v0

    .line 325
    .local v0, "rno":Ljava/lang/Character;
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_scalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 324
    .end local v0    # "rno":Ljava/lang/Character;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkHostReachable()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_pokecall:Lcom/mexuar/corraleta/protocol/Call;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Lcom/mexuar/corraleta/protocol/Call;

    invoke-direct {v0, p0}, Lcom/mexuar/corraleta/protocol/Call;-><init>(Lcom/mexuar/corraleta/protocol/Friend;)V

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_pokecall:Lcom/mexuar/corraleta/protocol/Call;

    .line 488
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_pokecall:Lcom/mexuar/corraleta/protocol/Call;

    invoke-direct {p0, v0}, Lcom/mexuar/corraleta/protocol/Friend;->addNewWaitingAck(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 489
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_pokecall:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->sendPoke()V

    .line 491
    :cond_0
    return-void
.end method

.method findCall(Ljava/lang/Character;)Lcom/mexuar/corraleta/protocol/Call;
    .locals 2
    .param p1, "theirno"    # Ljava/lang/Character;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_scalls:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mexuar/corraleta/protocol/Call;

    .line 105
    .local v0, "ret":Lcom/mexuar/corraleta/protocol/Call;
    return-object v0
.end method

.method getAudioFace()Lcom/mexuar/corraleta/audio/AudioInterface;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_binder:Lcom/mexuar/corraleta/protocol/Binder;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Binder;->getAudioFace()Lcom/mexuar/corraleta/audio/AudioInterface;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getFreeCallNo()Ljava/lang/Character;
    .locals 3

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-char v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_cno:C

    if-nez v0, :cond_0

    .line 253
    iget-char v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_cno:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_cno:C

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/Character;

    iget-char v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_cno:C

    add-int/lit8 v2, v1, 0x1

    int-to-char v2, v2

    iput-char v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_cno:C

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 3

    .prologue
    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_username:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_iad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "ret":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_registered:Z

    if-eqz v1, :cond_0

    const-string v1, " registered"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    return-object v0

    .line 560
    :cond_0
    const-string v1, " not registered"

    goto :goto_0
.end method

.method protected declared-synchronized gotAckToNew(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 2
    .param p1, "ncall"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->getLno()Ljava/lang/Character;

    move-result-object v0

    .line 305
    .local v0, "lno":Ljava/lang/Character;
    invoke-virtual {p0, p1}, Lcom/mexuar/corraleta/protocol/Friend;->addCall(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 306
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_awaitingAck:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_awaitingAck:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mexuar/corraleta/protocol/Friend;->tellGuiNewCall(Lcom/mexuar/corraleta/protocol/Call;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 304
    .end local v0    # "lno":Ljava/lang/Character;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method gotRinging(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "ca"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 529
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->isForReg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_binder:Lcom/mexuar/corraleta/protocol/Binder;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    invoke-virtual {v1, v2}, Lcom/mexuar/corraleta/protocol/Binder;->getGuiEventSender(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    move-result-object v0

    .line 532
    .local v0, "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    invoke-interface {v0, p1}, Lcom/mexuar/corraleta/protocol/ProtocolEventListener;->ringing(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 534
    .end local v0    # "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    :cond_0
    return-void
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_registered:Z

    return v0
.end method

.method public newCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mexuar/corraleta/protocol/Call;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;
    .param p3, "calledNo"    # Ljava/lang/String;
    .param p4, "callingNo"    # Ljava/lang/String;
    .param p5, "callingName"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Lcom/mexuar/corraleta/protocol/Call;

    invoke-direct {v0, p0}, Lcom/mexuar/corraleta/protocol/Call;-><init>(Lcom/mexuar/corraleta/protocol/Friend;)V

    .line 276
    .local v0, "ncall":Lcom/mexuar/corraleta/protocol/Call;
    invoke-direct {p0, v0}, Lcom/mexuar/corraleta/protocol/Friend;->addNewWaitingAck(Lcom/mexuar/corraleta/protocol/Call;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 277
    invoke-virtual/range {v0 .. v5}, Lcom/mexuar/corraleta/protocol/Call;->newCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-object v0
.end method

.method public recv([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/16 v6, 0x80

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    aget-byte v5, p1, v7

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v4, v5, 0x8

    .line 168
    .local v4, "scnum":I
    aget-byte v5, p1, v8

    and-int/lit8 v5, v5, 0x7f

    add-int/2addr v4, v5

    .line 169
    aget-byte v5, p1, v8

    if-gez v5, :cond_2

    move v5, v6

    :goto_0
    add-int/2addr v4, v5

    .line 170
    new-instance v3, Ljava/lang/Character;

    int-to-char v5, v4

    invoke-direct {v3, v5}, Ljava/lang/Character;-><init>(C)V

    .line 172
    .local v3, "sc":Ljava/lang/Character;
    invoke-virtual {p0, v3}, Lcom/mexuar/corraleta/protocol/Friend;->findCall(Ljava/lang/Character;)Lcom/mexuar/corraleta/protocol/Call;

    move-result-object v0

    .line 173
    .local v0, "ca":Lcom/mexuar/corraleta/protocol/Call;
    if-nez v0, :cond_0

    .line 175
    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v2, v5, 0x8

    .line 176
    .local v2, "dcnum":I
    aget-byte v5, p1, v9

    and-int/lit8 v5, v5, 0x7f

    add-int/2addr v2, v5

    .line 177
    aget-byte v5, p1, v9

    if-gez v5, :cond_3

    :goto_1
    add-int/2addr v2, v6

    .line 178
    new-instance v1, Ljava/lang/Character;

    int-to-char v5, v2

    invoke-direct {v1, v5}, Ljava/lang/Character;-><init>(C)V

    .line 179
    .local v1, "dc":Ljava/lang/Character;
    invoke-direct {p0, v1}, Lcom/mexuar/corraleta/protocol/Friend;->findWaiting(Ljava/lang/Character;)Lcom/mexuar/corraleta/protocol/Call;

    move-result-object v0

    .line 180
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    .line 182
    new-instance v0, Lcom/mexuar/corraleta/protocol/Call;

    .end local v0    # "ca":Lcom/mexuar/corraleta/protocol/Call;
    invoke-direct {v0, p0}, Lcom/mexuar/corraleta/protocol/Call;-><init>(Lcom/mexuar/corraleta/protocol/Friend;)V

    .line 183
    .restart local v0    # "ca":Lcom/mexuar/corraleta/protocol/Call;
    invoke-virtual {v0, v8}, Lcom/mexuar/corraleta/protocol/Call;->setIsInbound(Z)V

    .line 184
    invoke-virtual {v0, v3}, Lcom/mexuar/corraleta/protocol/Call;->setRno(Ljava/lang/Character;)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/Friend;->addCall(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 194
    .end local v1    # "dc":Ljava/lang/Character;
    .end local v2    # "dcnum":I
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0, p1}, Lcom/mexuar/corraleta/protocol/Call;->addFrame([B)V

    .line 201
    :cond_1
    return-void

    .end local v0    # "ca":Lcom/mexuar/corraleta/protocol/Call;
    .end local v3    # "sc":Ljava/lang/Character;
    :cond_2
    move v5, v7

    .line 169
    goto :goto_0

    .restart local v0    # "ca":Lcom/mexuar/corraleta/protocol/Call;
    .restart local v2    # "dcnum":I
    .restart local v3    # "sc":Ljava/lang/Character;
    :cond_3
    move v6, v7

    .line 177
    goto :goto_1

    .line 188
    .restart local v1    # "dc":Ljava/lang/Character;
    :cond_4
    const-string v5, "Frame with non-zero dest and non-existing scall"

    invoke-static {v5}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "source call no = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dest call no = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_username:Ljava/lang/String;

    .line 389
    iput-object p2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_password:Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regTick:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regTick:Ljava/util/Timer;

    const-wide/16 v2, 0x14

    const-wide/32 v4, 0xea60

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 395
    :cond_0
    return-void
.end method

.method protected removeCall(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "ca"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, "torem":Ljava/lang/Character;
    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->getRno()Ljava/lang/Character;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_scalls:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_scalls:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->getLno()Ljava/lang/Character;

    move-result-object v0

    .line 343
    .local v0, "lno":Ljava/lang/Character;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_awaitingAck:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_awaitingAck:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_1
    invoke-direct {p0, p1}, Lcom/mexuar/corraleta/protocol/Friend;->tellGuiHungup(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 348
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Lcom/mexuar/corraleta/protocol/Call;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/mexuar/corraleta/protocol/Call;-><init>(Lcom/mexuar/corraleta/protocol/Friend;ZZ)V

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    .line 441
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_username:Ljava/lang/String;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mexuar/corraleta/protocol/Call;->setUnameNpass(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    invoke-direct {p0, v0}, Lcom/mexuar/corraleta/protocol/Friend;->addNewWaitingAck(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->register()V

    .line 447
    return-void
.end method

.method protected send(Lcom/mexuar/corraleta/util/ByteBuffer;)V
    .locals 2
    .param p1, "bs"    # Lcom/mexuar/corraleta/util/ByteBuffer;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_binder:Lcom/mexuar/corraleta/protocol/Binder;

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_iad:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mexuar/corraleta/protocol/Binder;->send(Ljava/lang/String;Lcom/mexuar/corraleta/util/ByteBuffer;)V

    .line 242
    return-void
.end method

.method setAnswered(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "ca"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 545
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->isForReg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_binder:Lcom/mexuar/corraleta/protocol/Binder;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    invoke-virtual {v1, v2}, Lcom/mexuar/corraleta/protocol/Binder;->getGuiEventSender(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    move-result-object v0

    .line 548
    .local v0, "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    invoke-interface {v0, p1}, Lcom/mexuar/corraleta/protocol/ProtocolEventListener;->answered(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 550
    .end local v0    # "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    :cond_0
    return-void
.end method

.method protected setPong(ZI)V
    .locals 3
    .param p1, "b"    # Z
    .param p2, "roundtrip"    # I

    .prologue
    .line 504
    iput-boolean p1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_hostReachable:Z

    .line 505
    iput p2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_hostReachableRoundTrip:I

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPong "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_binder:Lcom/mexuar/corraleta/protocol/Binder;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    invoke-virtual {v1, v2}, Lcom/mexuar/corraleta/protocol/Binder;->getGuiEventSender(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    move-result-object v0

    .line 510
    .local v0, "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    iget-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_hostReachable:Z

    iget v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_hostReachableRoundTrip:I

    invoke-interface {v0, p0, v1, v2}, Lcom/mexuar/corraleta/protocol/ProtocolEventListener;->setHostReachable(Lcom/mexuar/corraleta/protocol/Friend;ZI)V

    .line 512
    .end local v0    # "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    :cond_0
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_pokecall:Lcom/mexuar/corraleta/protocol/Call;

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_pokecall:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->removeSelf()V

    .line 515
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_pokecall:Lcom/mexuar/corraleta/protocol/Call;

    .line 517
    :cond_1
    return-void
.end method

.method protected setRegistered(Z)V
    .locals 3
    .param p1, "ok"    # Z

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_registered:Z

    .line 460
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_binder:Lcom/mexuar/corraleta/protocol/Binder;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    invoke-virtual {v1, v2}, Lcom/mexuar/corraleta/protocol/Binder;->getGuiEventSender(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    move-result-object v0

    .line 463
    .local v0, "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    invoke-interface {v0, p0, p1}, Lcom/mexuar/corraleta/protocol/ProtocolEventListener;->registered(Lcom/mexuar/corraleta/protocol/Friend;Z)V

    .line 466
    .end local v0    # "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    :cond_0
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->removeSelf()V

    .line 469
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    .line 471
    :cond_1
    iget-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_registered:Z

    if-nez v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_binder:Lcom/mexuar/corraleta/protocol/Binder;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_iad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mexuar/corraleta/protocol/Binder;->removeFriend(Ljava/lang/String;)Lcom/mexuar/corraleta/protocol/Friend;

    .line 475
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 7

    .prologue
    .line 113
    const/4 v5, 0x0

    new-array v0, v5, [Lcom/mexuar/corraleta/protocol/Call;

    .line 114
    .local v0, "ca":[Lcom/mexuar/corraleta/protocol/Call;
    const/4 v4, 0x0

    .line 115
    .local v4, "tot":I
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/Friend;->cancel()Z

    .line 116
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/Friend;->_scalls:Ljava/util/Hashtable;

    monitor-enter v6

    .line 118
    :try_start_0
    iget-object v5, p0, Lcom/mexuar/corraleta/protocol/Friend;->_scalls:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 119
    .local v1, "calls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/mexuar/corraleta/protocol/Call;>;"
    iget-object v5, p0, Lcom/mexuar/corraleta/protocol/Friend;->_scalls:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v4

    .line 120
    new-array v0, v4, [Lcom/mexuar/corraleta/protocol/Call;

    .line 121
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .line 122
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const/4 v2, 0x0

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    if-lt v2, v4, :cond_1

    .line 131
    const/4 v4, 0x0

    .line 132
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/Friend;->_awaitingAck:Ljava/util/Hashtable;

    monitor-enter v6

    .line 134
    :try_start_1
    iget-object v5, p0, Lcom/mexuar/corraleta/protocol/Friend;->_awaitingAck:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 135
    iget-object v5, p0, Lcom/mexuar/corraleta/protocol/Friend;->_awaitingAck:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v4

    .line 136
    new-array v0, v4, [Lcom/mexuar/corraleta/protocol/Call;

    .line 137
    const/4 v2, 0x0

    move v3, v2

    .line 138
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    const/4 v2, 0x0

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_3
    if-lt v2, v4, :cond_3

    .line 147
    return-void

    .line 124
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :try_start_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mexuar/corraleta/protocol/Call;

    aput-object v5, v0, v3

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 116
    .end local v1    # "calls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/mexuar/corraleta/protocol/Call;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 129
    .restart local v1    # "calls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/mexuar/corraleta/protocol/Call;>;"
    .restart local v2    # "i":I
    :cond_1
    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/mexuar/corraleta/protocol/Call;->removeSelf()V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 140
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :try_start_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mexuar/corraleta/protocol/Call;

    aput-object v5, v0, v3

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 132
    .end local v3    # "i":I
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 145
    .restart local v2    # "i":I
    :cond_3
    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/mexuar/corraleta/protocol/Call;->removeSelf()V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method tellGuiNewCall(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "ca"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->isForReg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_binder:Lcom/mexuar/corraleta/protocol/Binder;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    invoke-virtual {v1, v2}, Lcom/mexuar/corraleta/protocol/Binder;->getGuiEventSender(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    move-result-object v0

    .line 214
    .local v0, "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    invoke-interface {v0, p1}, Lcom/mexuar/corraleta/protocol/ProtocolEventListener;->newCall(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 216
    .end local v0    # "ges":Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regTick:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regTick:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 423
    :cond_0
    new-instance v0, Lcom/mexuar/corraleta/protocol/Call;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/mexuar/corraleta/protocol/Call;-><init>(Lcom/mexuar/corraleta/protocol/Friend;ZZ)V

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    .line 424
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_username:Ljava/lang/String;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Friend;->_password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mexuar/corraleta/protocol/Call;->setUnameNpass(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    invoke-direct {p0, v0}, Lcom/mexuar/corraleta/protocol/Friend;->addNewWaitingAck(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 428
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Friend;->_regcall:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->unregister()V

    .line 430
    :cond_1
    return-void
.end method

.method public willAccept(Lcom/mexuar/corraleta/protocol/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 573
    const/4 v0, 0x1

    .line 574
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    instance-of v1, v1, Lcom/mexuar/corraleta/protocol/CallManager;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Friend;->_gui:Lcom/mexuar/corraleta/protocol/ProtocolEventListener;

    check-cast v1, Lcom/mexuar/corraleta/protocol/CallManager;

    invoke-interface {v1, p1}, Lcom/mexuar/corraleta/protocol/CallManager;->accept(Lcom/mexuar/corraleta/protocol/Call;)Z

    move-result v0

    .line 578
    :cond_0
    return v0
.end method
