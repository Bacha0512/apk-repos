.class public Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
.super Lcom/mexuar/corraleta/protocol/FullFrame;
.source "ProtocolControlFrame.java"


# static fields
.field static final ACCEPT:I = 0x7

.field static final ACK:I = 0x4

.field static final AUTHREP:I = 0x9

.field static final AUTHREQ:I = 0x8

.field static final DIAL:I = 0x15

.field static final DPREP:I = 0x14

.field static final DPREQ:I = 0x13

.field static final HANGUP:I = 0x5

.field static final INVAL:I = 0xa

.field static final LAGRP:I = 0xc

.field static final LAGRQ:I = 0xb

.field static final MWI:I = 0x20

.field static final NEW:I = 0x1

.field static final PAGE:I = 0x1f

.field static final PING:I = 0x2

.field static final POKE:I = 0x1e

.field static final PONG:I = 0x3

.field static final QUELCH:I = 0x1c

.field static final REGACK:I = 0xf

.field static final REGAUTH:I = 0xe

.field static final REGREJ:I = 0x10

.field static final REGREL:I = 0x11

.field static final REGREQ:I = 0xd

.field static final REJECT:I = 0x6

.field static final TRANSFER:I = 0x22

.field static final TXACC:I = 0x18

.field static final TXCNT:I = 0x17

.field static final TXREADY:I = 0x19

.field static final TXREJ:I = 0x1b

.field static final TXREL:I = 0x1a

.field static final TXREQ:I = 0x16

.field static final UNQUELCH:I = 0x1d

.field static final UNSUPPORT:I = 0x21

.field static final VNAK:I = 0x12

.field static final controlText:[Ljava/lang/String;


# instance fields
.field private _iep:Lcom/mexuar/corraleta/protocol/InfoElement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 73
    const-string v2, "ZERO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 74
    const-string v2, "Initiate a new call"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 75
    const-string v2, "Ping request"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 76
    const-string v2, "Ping or poke reply"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 77
    const-string v2, "Acknowledgement"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 78
    const-string v2, "Initiate call teardown"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 79
    const-string v2, "Reject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 80
    const-string v2, "Accepted"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 81
    const-string v2, "Authentication request"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 82
    const-string v2, "Authentication reply"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 83
    const-string v2, "Invalid call"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 84
    const-string v2, "Lag request"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 85
    const-string v2, "Lag reply"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 86
    const-string v2, "Registration request"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 87
    const-string v2, "Registration authenticate"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 88
    const-string v2, "Registration acknowledgement"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 89
    const-string v2, "Registration reject"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 90
    const-string v2, "Registration release"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 91
    const-string v2, "Video/Voice retransmit request"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 92
    const-string v2, "Dialplan request"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 93
    const-string v2, "Dialplan response"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 94
    const-string v2, "Dial"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 95
    const-string v2, "Transfer request"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 96
    const-string v2, "Transfer connect"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 97
    const-string v2, "Transfer accept"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 98
    const-string v2, "Transfer ready"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 99
    const-string v2, "Transfer release"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 100
    const-string v2, "Transfer reject"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 101
    const-string v2, "Halt audio/video transmission"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 102
    const-string v2, "Resume audio/video transmission"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 103
    const-string v2, "Poke request"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 104
    const-string v2, "Paging call description"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 105
    const-string v2, "Message waiting indication"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 106
    const-string v2, "Unsupported message"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 107
    const-string v2, "Remote transfer request"

    aput-object v2, v0, v1

    .line 72
    sput-object v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->controlText:[Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 1
    .param p1, "p0"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/mexuar/corraleta/protocol/FullFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 138
    const/4 v0, 0x6

    iput v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_frametype:I

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;[B)V
    .locals 3
    .param p1, "p0"    # Lcom/mexuar/corraleta/protocol/Call;
    .param p2, "p1"    # [B

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/mexuar/corraleta/protocol/FullFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;[B)V

    .line 121
    iget v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iamanack:Z

    .line 122
    new-instance v1, Lcom/mexuar/corraleta/protocol/InfoElement;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_data:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-direct {v1, v2}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>(Lcom/mexuar/corraleta/util/ByteBuffer;)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-virtual {v1, p0}, Lcom/mexuar/corraleta/protocol/InfoElement;->parse(Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;)V
    :try_end_0
    .catch Lcom/mexuar/corraleta/protocol/IAX2ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    return-void

    .line 121
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private buildAuthInfoElements(Lcom/mexuar/corraleta/protocol/InfoElement;Lcom/mexuar/corraleta/protocol/InfoElement;Ljava/lang/String;)V
    .locals 5
    .param p1, "iep"    # Lcom/mexuar/corraleta/protocol/InfoElement;
    .param p2, "nip"    # Lcom/mexuar/corraleta/protocol/InfoElement;
    .param p3, "pass"    # Ljava/lang/String;

    .prologue
    .line 540
    iget-object v3, p1, Lcom/mexuar/corraleta/protocol/InfoElement;->username:Ljava/lang/String;

    iput-object v3, p2, Lcom/mexuar/corraleta/protocol/InfoElement;->username:Ljava/lang/String;

    .line 541
    iget-object v3, p2, Lcom/mexuar/corraleta/protocol/InfoElement;->refresh:Ljava/lang/Integer;

    iput-object v3, p2, Lcom/mexuar/corraleta/protocol/InfoElement;->refresh:Ljava/lang/Integer;

    .line 543
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    iget-object v3, v3, Lcom/mexuar/corraleta/protocol/InfoElement;->authmethods:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 545
    iget-object v3, p1, Lcom/mexuar/corraleta/protocol/InfoElement;->authmethods:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 546
    .local v2, "model":I
    and-int/lit8 v3, v2, 0x2

    if-lez v3, :cond_1

    .line 550
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 551
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    iget-object v3, v3, Lcom/mexuar/corraleta/protocol/InfoElement;->challenge:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 552
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 553
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/mexuar/corraleta/protocol/Binder;->enHex([BLjava/lang/Character;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/mexuar/corraleta/protocol/InfoElement;->md5Result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "model":I
    :cond_0
    :goto_0
    return-void

    .line 554
    .restart local v2    # "model":I
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "IAX2"

    const-string v4, "MD5 not supported."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    and-int/lit8 v3, v2, 0x1

    if-lez v3, :cond_0

    .line 561
    iput-object p3, p2, Lcom/mexuar/corraleta/protocol/InfoElement;->md5Result:Ljava/lang/String;

    goto :goto_0
.end method

.method private logInbound()V
    .locals 1

    .prologue
    .line 525
    const-string v0, "got"

    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->log(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method private sendAcceptOrRej()V
    .locals 23

    .prologue
    .line 441
    const/4 v12, 0x0

    .line 442
    .local v12, "match":I
    const/16 v17, 0x0

    .line 443
    .local v17, "will":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Call;->getAudioFace()Lcom/mexuar/corraleta/audio/AudioInterface;

    move-result-object v2

    .line 445
    .local v2, "a":Lcom/mexuar/corraleta/audio/AudioInterface;
    const-string v6, "Congestion"

    .line 446
    .local v6, "cause":Ljava/lang/String;
    invoke-interface {v2}, Lcom/mexuar/corraleta/audio/AudioInterface;->codecPrefString()Ljava/lang/String;

    move-result-object v13

    .line 447
    .local v13, "ourprefs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->codec_prefs:[B

    .line 448
    .local v15, "theirprefs":[B
    if-nez v15, :cond_0

    .line 450
    const-string v18, "no codec IE"

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->capability:Ljava/lang/Integer;

    .line 452
    .local v4, "cap":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 453
    const-string v18, "no capability IE"

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 454
    const-string v5, ""

    .line 455
    .local v5, "caps":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 456
    .local v7, "cbits":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v18, 0x14

    move/from16 v0, v18

    if-lt v9, v0, :cond_3

    .line 461
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 465
    .end local v4    # "cap":Ljava/lang/Integer;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v7    # "cbits":I
    .end local v9    # "i":I
    :cond_0
    if-eqz v15, :cond_1

    .line 466
    const-string v18, "Looking for a matching codec"

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 467
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "ours = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 468
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "theirs = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 469
    move-object v8, v15

    .line 470
    .local v8, "cpr":[B
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 471
    .local v16, "want":[B
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v11, v0, :cond_5

    .line 490
    .end local v8    # "cpr":[B
    .end local v11    # "j":I
    .end local v16    # "want":[B
    :cond_1
    if-eqz v12, :cond_8

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Lcom/mexuar/corraleta/protocol/Call;->setAudioFormat(Ljava/lang/Integer;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingNo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->calledNo:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->callingName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->username:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 492
    invoke-virtual/range {v18 .. v22}, Lcom/mexuar/corraleta/protocol/Call;->newCallFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    .line 503
    :goto_2
    if-eqz v17, :cond_2

    .line 504
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 505
    const/16 v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->mkAck(I)Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    move-result-object v3

    .line 506
    .local v3, "acc":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    new-instance v10, Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {v10}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>()V

    .line 507
    .local v10, "ie":Lcom/mexuar/corraleta/protocol/InfoElement;
    new-instance v18, Ljava/lang/Integer;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/mexuar/corraleta/protocol/InfoElement;->format:Ljava/lang/Integer;

    .line 508
    invoke-virtual {v3, v10}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 509
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "we acc\'d call format = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 519
    .end local v3    # "acc":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    .end local v10    # "ie":Lcom/mexuar/corraleta/protocol/InfoElement;
    :cond_2
    :goto_3
    return-void

    .line 457
    .restart local v4    # "cap":Ljava/lang/Integer;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v7    # "cbits":I
    .restart local v9    # "i":I
    :cond_3
    const/16 v18, 0x1

    shl-int v18, v18, v9

    and-int v18, v18, v7

    if-lez v18, :cond_4

    .line 458
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v19, v9, 0x38

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 456
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 472
    .end local v4    # "cap":Ljava/lang/Integer;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v7    # "cbits":I
    .end local v9    # "i":I
    .restart local v8    # "cpr":[B
    .restart local v11    # "j":I
    .restart local v16    # "want":[B
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v9, v0, :cond_6

    .line 484
    :goto_5
    if-nez v12, :cond_1

    .line 471
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 473
    :cond_6
    aget-byte v18, v16, v11

    aget-byte v19, v8, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 474
    const/16 v18, 0x1

    aget-byte v19, v8, v9

    add-int/lit8 v19, v19, -0x42

    shl-int v12, v18, v19

    .line 475
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "found codec match "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v19, v16, v11

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 476
    const-string v19, " -> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 475
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 480
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "codec option "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v19, v16, v11

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " != "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 481
    aget-byte v19, v8, v9

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 480
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->verb(Ljava/lang/String;)V

    .line 472
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 498
    .end local v8    # "cpr":[B
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v16    # "want":[B
    :cond_8
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 499
    const-string v6, "No compatible codec."

    .line 500
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "codec cap was "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->capability:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 501
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "but codec pref was "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->codec_prefs:[B

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 512
    :cond_9
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->mkAck(I)Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    move-result-object v14

    .line 513
    .local v14, "rej":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    new-instance v10, Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {v10}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>()V

    .line 514
    .restart local v10    # "ie":Lcom/mexuar/corraleta/protocol/InfoElement;
    iput-object v6, v10, Lcom/mexuar/corraleta/protocol/InfoElement;->cause:Ljava/lang/String;

    .line 515
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "we rejected call because = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v14, v10}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    goto/16 :goto_3
.end method

.method private sendAuthRep()V
    .locals 4

    .prologue
    .line 573
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    if-eqz v3, :cond_0

    .line 574
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v3}, Lcom/mexuar/corraleta/protocol/Call;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "p":Ljava/lang/String;
    new-instance v1, Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {v1}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>()V

    .line 576
    .local v1, "nip":Lcom/mexuar/corraleta/protocol/InfoElement;
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {p0, v3, v1, v2}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->buildAuthInfoElements(Lcom/mexuar/corraleta/protocol/InfoElement;Lcom/mexuar/corraleta/protocol/InfoElement;Ljava/lang/String;)V

    .line 577
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->mkAck(I)Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    move-result-object v0

    .line 578
    .local v0, "ack":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    const-string v3, "Sending complete AUTHREP"

    invoke-static {v3}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 583
    .end local v0    # "ack":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    .end local v1    # "nip":Lcom/mexuar/corraleta/protocol/InfoElement;
    .end local v2    # "p":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sendLagReply()V
    .locals 2

    .prologue
    .line 591
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->mkAck(I)Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    move-result-object v0

    .line 592
    .local v0, "ack":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    const-string v1, "Sending LagReply"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 593
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 595
    return-void
.end method

.method private sendPong()V
    .locals 2

    .prologue
    .line 603
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->mkAck(I)Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    move-result-object v0

    .line 604
    .local v0, "pong":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    const-string v1, "Sending Pong"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 605
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 606
    return-void
.end method

.method private sendTxrej()V
    .locals 4

    .prologue
    .line 236
    const/16 v2, 0x1b

    invoke-virtual {p0, v2}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->mkAck(I)Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    move-result-object v1

    .line 237
    .local v1, "rej":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    new-instance v0, Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {v0}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>()V

    .line 238
    .local v0, "nip":Lcom/mexuar/corraleta/protocol/InfoElement;
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->causecode:Ljava/lang/Integer;

    .line 239
    const-string v2, "Facility rejected"

    iput-object v2, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->cause:Ljava/lang/String;

    .line 240
    invoke-virtual {v1, v0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 241
    return-void
.end method


# virtual methods
.method ack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->logInbound()V

    .line 147
    iget v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    packed-switch v1, :pswitch_data_0

    .line 227
    :pswitch_0
    const-string v1, "Unhandled PCF"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 230
    :goto_0
    :pswitch_1
    return-void

    .line 149
    :pswitch_2
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendPong()V

    goto :goto_0

    .line 152
    :pswitch_3
    const-string v1, "Sending Ack frame"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendAck()V

    .line 154
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1, v4}, Lcom/mexuar/corraleta/protocol/Call;->setPong(Z)V

    goto :goto_0

    .line 159
    :pswitch_4
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendAuthRep()V

    goto :goto_0

    .line 162
    :pswitch_5
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->isForReg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendRegReq()V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendRegRel()V

    goto :goto_0

    .line 170
    :pswitch_6
    const-string v1, "Sending Ack frame"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendAck()V

    .line 172
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->isForReg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1, v4}, Lcom/mexuar/corraleta/protocol/Call;->setRegistered(Z)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1, v3}, Lcom/mexuar/corraleta/protocol/Call;->setRegistered(Z)V

    goto :goto_0

    .line 180
    :pswitch_7
    const-string v1, "Sending Ack frame"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendAck()V

    .line 182
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1, v3}, Lcom/mexuar/corraleta/protocol/Call;->setRegistered(Z)V

    goto :goto_0

    .line 185
    :pswitch_8
    const-string v1, "Sending TXREJ frame"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendTxrej()V

    goto :goto_0

    .line 189
    :pswitch_9
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendAck()V

    .line 190
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->removeSelf()V

    goto :goto_0

    .line 193
    :pswitch_a
    const-string v1, "Sending lag reply"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendLagReply()V

    goto :goto_0

    .line 197
    :pswitch_b
    const-string v1, "Sending Ack frame"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendAck()V

    .line 199
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    iget-object v2, v2, Lcom/mexuar/corraleta/protocol/InfoElement;->format:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/mexuar/corraleta/protocol/Call;->setAudioFormat(Ljava/lang/Integer;)V

    .line 200
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1, v4}, Lcom/mexuar/corraleta/protocol/Call;->setAccepted(Z)V

    .line 201
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    new-instance v2, Ljava/lang/Character;

    const v3, 0xffff

    iget v4, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_sCall:I

    and-int/2addr v3, v4

    int-to-char v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1, v2}, Lcom/mexuar/corraleta/protocol/Call;->setRno(Ljava/lang/Character;)V

    goto/16 :goto_0

    .line 206
    :pswitch_c
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    iget-object v1, v1, Lcom/mexuar/corraleta/protocol/InfoElement;->cause:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cause "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    iget-object v2, v2, Lcom/mexuar/corraleta/protocol/InfoElement;->cause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 209
    :cond_2
    const-string v1, "Sending Ack frame"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendAck()V

    .line 211
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1, v3}, Lcom/mexuar/corraleta/protocol/Call;->setAccepted(Z)V

    goto/16 :goto_0

    .line 214
    :pswitch_d
    const-string v1, "Sending Ack frame"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendAck()V

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "val":I
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    iget-object v1, v1, Lcom/mexuar/corraleta/protocol/InfoElement;->causecode:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    iget-object v1, v1, Lcom/mexuar/corraleta/protocol/InfoElement;->causecode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1, v0}, Lcom/mexuar/corraleta/protocol/Call;->hungup(I)V

    goto/16 :goto_0

    .line 223
    .end local v0    # "val":I
    :pswitch_e
    const-string v1, "Got New"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendAcceptOrRej()V

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method arrived()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 379
    return-void
.end method

.method commit(Lcom/mexuar/corraleta/protocol/FullFrame;)V
    .locals 1
    .param p1, "ack"    # Lcom/mexuar/corraleta/protocol/FullFrame;

    .prologue
    .line 418
    iget v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    packed-switch v0, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 424
    :pswitch_1
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->removeSelf()V

    goto :goto_0

    .line 429
    :pswitch_2
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->acceptedCall()V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "inout"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 364
    .local v0, "bu":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", PCF subClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    iget v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    sget-object v2, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->controlText:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 366
    sget-object v1, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->controlText:[Ljava/lang/String;

    iget v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/mexuar/corraleta/protocol/FullFrame;->log(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public sendHangup()V
    .locals 4

    .prologue
    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/protocol/Call;->getLno()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    iput v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_sCall:I

    .line 250
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/protocol/Call;->getRno()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    iput v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_dCall:I

    .line 251
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v2

    iput v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iseq:I

    .line 252
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/protocol/Call;->getOseqInc()I

    move-result v2

    iput v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_oseq:I

    .line 253
    const/4 v2, 0x5

    iput v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    .line 255
    new-instance v1, Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {v1}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>()V

    .line 256
    .local v1, "ie":Lcom/mexuar/corraleta/protocol/InfoElement;
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v1, Lcom/mexuar/corraleta/protocol/InfoElement;->causecode:Ljava/lang/Integer;

    .line 257
    const-string v2, "Sending Hangup"

    invoke-static {v2}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v1    # "ie":Lcom/mexuar/corraleta/protocol/InfoElement;
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V
    .locals 12
    .param p1, "ie"    # Lcom/mexuar/corraleta/protocol/InfoElement;

    .prologue
    const-wide v10, 0x100000000L

    const v6, 0x8000

    .line 387
    const/16 v3, 0x800

    invoke-static {v3}, Lcom/mexuar/corraleta/util/ByteBuffer;->allocate(I)Lcom/mexuar/corraleta/util/ByteBuffer;

    move-result-object v0

    .line 388
    .local v0, "buff":Lcom/mexuar/corraleta/util/ByteBuffer;
    iget v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_sCall:I

    or-int/2addr v3, v6

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lcom/mexuar/corraleta/util/ByteBuffer;->putChar(C)V

    .line 389
    iget v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_dCall:I

    .line 390
    .local v1, "rd":I
    iget-boolean v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_retry:Z

    if-eqz v3, :cond_0

    .line 391
    or-int/2addr v1, v6

    .line 393
    :cond_0
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Lcom/mexuar/corraleta/util/ByteBuffer;->putChar(C)V

    .line 394
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->getTimestampVal()J

    move-result-wide v4

    .line 395
    .local v4, "tst":J
    and-long v6, v10, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    sub-long/2addr v4, v10

    .line 396
    :cond_1
    long-to-int v3, v4

    invoke-virtual {v0, v3}, Lcom/mexuar/corraleta/util/ByteBuffer;->putInt(I)V

    .line 397
    iget v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_oseq:I

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 398
    iget v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iseq:I

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 399
    iget v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_frametype:I

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 400
    iget v2, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    .line 401
    .local v2, "sc":I
    iget-boolean v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_cbit:Z

    if-eqz v3, :cond_2

    .line 402
    or-int/lit16 v2, v2, 0x80

    .line 404
    :cond_2
    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 405
    if-eqz p1, :cond_3

    .line 406
    invoke-virtual {p1, v0}, Lcom/mexuar/corraleta/protocol/InfoElement;->update(Lcom/mexuar/corraleta/util/ByteBuffer;)V

    .line 408
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendAndStore(Lcom/mexuar/corraleta/util/ByteBuffer;)V

    .line 409
    return-void
.end method

.method sendPoke()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->getLno()Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    iput v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_sCall:I

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_dCall:I

    .line 348
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v0

    iput v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iseq:I

    .line 349
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->getOseqInc()I

    move-result v0

    iput v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_oseq:I

    .line 350
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    .line 352
    const-string v0, "Sending Poke"

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 355
    return-void
.end method

.method sendRegRel()V
    .locals 4

    .prologue
    .line 324
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->mkAck(I)Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    move-result-object v0

    .line 325
    .local v0, "ack":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v3}, Lcom/mexuar/corraleta/protocol/Call;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "p":Ljava/lang/String;
    new-instance v1, Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {v1}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>()V

    .line 327
    .local v1, "nip":Lcom/mexuar/corraleta/protocol/InfoElement;
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {p0, v3, v1, v2}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->buildAuthInfoElements(Lcom/mexuar/corraleta/protocol/InfoElement;Lcom/mexuar/corraleta/protocol/InfoElement;Ljava/lang/String;)V

    .line 328
    const-string v3, "Sending completed RegRelease"

    invoke-static {v3}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 330
    return-void
.end method

.method sendRegRel(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getLno()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_sCall:I

    .line 308
    const/4 v1, 0x0

    iput v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_dCall:I

    .line 309
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iseq:I

    .line 310
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getOseqInc()I

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_oseq:I

    .line 311
    const/16 v1, 0x11

    iput v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    .line 313
    new-instance v0, Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {v0}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>()V

    .line 314
    .local v0, "ie":Lcom/mexuar/corraleta/protocol/InfoElement;
    iput-object p1, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->username:Ljava/lang/String;

    .line 315
    const-string v1, "Sending initial RegRelease"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 317
    return-void
.end method

.method sendRegReq()V
    .locals 4

    .prologue
    .line 292
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->mkAck(I)Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    move-result-object v0

    .line 293
    .local v0, "ack":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v3}, Lcom/mexuar/corraleta/protocol/Call;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "p":Ljava/lang/String;
    new-instance v1, Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {v1}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>()V

    .line 295
    .local v1, "nip":Lcom/mexuar/corraleta/protocol/InfoElement;
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iep:Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {p0, v3, v1, v2}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->buildAuthInfoElements(Lcom/mexuar/corraleta/protocol/InfoElement;Lcom/mexuar/corraleta/protocol/InfoElement;Ljava/lang/String;)V

    .line 296
    const-string v3, "Sending completed RegRequest"

    invoke-static {v3}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 298
    return-void
.end method

.method sendRegReq(Ljava/lang/String;I)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "refresh"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getLno()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_sCall:I

    .line 275
    const/4 v1, 0x0

    iput v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_dCall:I

    .line 276
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iseq:I

    .line 277
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getOseqInc()I

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_oseq:I

    .line 278
    const/16 v1, 0xd

    iput v1, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    .line 280
    new-instance v0, Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {v0}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>()V

    .line 281
    .local v0, "ie":Lcom/mexuar/corraleta/protocol/InfoElement;
    iput-object p1, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->username:Ljava/lang/String;

    .line 282
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Lcom/mexuar/corraleta/protocol/InfoElement;->refresh:Ljava/lang/Integer;

    .line 283
    const-string v1, "Sending initial RegRequest"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 285
    return-void
.end method
