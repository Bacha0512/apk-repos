.class public Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;
.super Ljava/lang/Object;
.source "PjStreamDialtoneGenerator.java"


# static fields
.field private static SUPPORTED_DTMF:Ljava/lang/String; = null

.field private static final THIS_FILE:Ljava/lang/String; = "PjStreamDialtoneGenerator"


# instance fields
.field private final callId:I

.field private dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

.field private dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

.field private dialtoneSlot:I

.field private final streamAsMicro:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "0123456789abcd*#"

    sput-object v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->SUPPORTED_DTMF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "aCallId"    # I

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;-><init>(IZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "aCallId"    # I
    .param p2, "onMicro"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    .line 56
    iput p1, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->callId:I

    .line 57
    iput-boolean p2, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->streamAsMicro:Z

    .line 58
    return-void
.end method

.method private ensureDialtoneGen()I
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    if-nez v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->startDialtoneGenerator()I

    move-result v0

    .line 186
    .local v0, "status":I
    sget v1, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    if-eq v0, v1, :cond_0

    .line 187
    const/4 v1, -0x1

    .line 190
    .end local v0    # "status":I
    :goto_0
    return v1

    :cond_0
    sget v1, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    goto :goto_0
.end method

.method private declared-synchronized startDialtoneGenerator()I
    .locals 26

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    new-instance v19, Lorg/pjsip/pjsua/pjsua_call_info;

    invoke-direct/range {v19 .. v19}, Lorg/pjsip/pjsua/pjsua_call_info;-><init>()V

    .line 68
    .local v19, "info":Lorg/pjsip/pjsua/pjsua_call_info;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->callId:I

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lorg/pjsip/pjsua/pjsua;->call_get_info(ILorg/pjsip/pjsua/pjsua_call_info;)I

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v16, "tonegen-"

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->callId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v22, 0x200

    const-wide/16 v24, 0x200

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    invoke-static {v4, v0, v1, v2, v3}, Lorg/pjsip/pjsua/pjsua;->pjsua_pool_create(Ljava/lang/String;JJ)Lorg/pjsip/pjsua/pj_pool_t;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

    .line 72
    const-string v4, "dialtoneGen"

    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v5

    .line 73
    .local v5, "name":Lorg/pjsip/pjsua/pj_str_t;
    const-wide/16 v6, 0x1f40

    .line 74
    .local v6, "clockRate":J
    const-wide/16 v8, 0x1

    .line 75
    .local v8, "channelCount":J
    const-wide/16 v10, 0xa0

    .line 76
    .local v10, "samplesPerFrame":J
    const-wide/16 v12, 0x10

    .line 77
    .local v12, "bitsPerSample":J
    const-wide/16 v14, 0x0

    .line 78
    .local v14, "options":J
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v18, v0

    .line 79
    .local v18, "dialtoneSlotPtr":[I
    new-instance v4, Lorg/pjsip/pjsua/pjmedia_port;

    invoke-direct {v4}, Lorg/pjsip/pjsua/pjmedia_port;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    .line 80
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    move-object/from16 v16, v0

    invoke-static/range {v4 .. v16}, Lorg/pjsip/pjsua/pjsua;->pjmedia_tonegen_create2(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pj_str_t;JJJJJLorg/pjsip/pjsua/pjmedia_port;)I

    move-result v20

    .line 81
    .local v20, "status":I
    sget v4, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_0

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->stopDialtoneGenerator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, v20

    .line 102
    :goto_0
    monitor-exit p0

    return v4

    .line 85
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Lorg/pjsip/pjsua/pjsua;->conf_add_port(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjmedia_port;[I)I

    move-result v20

    .line 86
    sget v4, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_1

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->stopDialtoneGenerator()V

    move/from16 v4, v20

    .line 88
    goto :goto_0

    .line 90
    :cond_1
    const/4 v4, 0x0

    aget v4, v18, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    .line 91
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->streamAsMicro:Z

    if-eqz v4, :cond_2

    .line 92
    invoke-virtual/range {v19 .. v19}, Lorg/pjsip/pjsua/pjsua_call_info;->getConf_slot()I

    move-result v17

    .line 93
    .local v17, "callConfSlot":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    move/from16 v0, v17

    invoke-static {v4, v0}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    move-result v20

    .line 97
    .end local v17    # "callConfSlot":I
    :goto_1
    sget v4, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_3

    .line 98
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->stopDialtoneGenerator()V

    move/from16 v4, v20

    .line 100
    goto :goto_0

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    move-result v20

    goto :goto_1

    .line 102
    :cond_3
    sget v4, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v5    # "name":Lorg/pjsip/pjsua/pj_str_t;
    .end local v6    # "clockRate":J
    .end local v8    # "channelCount":J
    .end local v10    # "samplesPerFrame":J
    .end local v12    # "bitsPerSample":J
    .end local v14    # "options":J
    .end local v18    # "dialtoneSlotPtr":[I
    .end local v19    # "info":Lorg/pjsip/pjsua/pjsua_call_info;
    .end local v20    # "status":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private stopSending()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->pjmedia_tonegen_stop(Lorg/pjsip/pjsua/pjmedia_port;)I

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized sendPjMediaDialTone(Ljava/lang/String;)I
    .locals 9
    .param p1, "dtmfChars"    # Ljava/lang/String;

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->ensureDialtoneGen()I

    move-result v8

    .line 136
    .local v8, "status":I
    sget v0, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v8, v0, :cond_1

    .line 157
    :cond_0
    monitor-exit p0

    return v8

    .line 139
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->stopSending()V

    .line 141
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 142
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 143
    .local v6, "d":C
    sget-object v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->SUPPORTED_DTMF:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 144
    const-string v0, "PjStreamDialtoneGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported DTMF char "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 147
    :cond_2
    const/4 v0, 0x1

    new-array v3, v0, [Lorg/pjsip/pjsua/pjmedia_tone_digit;

    .line 148
    .local v3, "tone":[Lorg/pjsip/pjsua/pjmedia_tone_digit;
    const/4 v0, 0x0

    new-instance v1, Lorg/pjsip/pjsua/pjmedia_tone_digit;

    invoke-direct {v1}, Lorg/pjsip/pjsua/pjmedia_tone_digit;-><init>()V

    aput-object v1, v3, v0

    .line 149
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->setVolume(S)V

    .line 150
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->setOn_msec(S)V

    .line 151
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->setOff_msec(S)V

    .line 152
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0, v6}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->setDigit(C)V

    .line 153
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    const-wide/16 v1, 0x1

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsua;->pjmedia_tonegen_play_digits(Lorg/pjsip/pjsua/pjmedia_port;J[Lorg/pjsip/pjsua/pjmedia_tone_digit;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 135
    .end local v3    # "tone":[Lorg/pjsip/pjsua/pjmedia_tone_digit;
    .end local v6    # "d":C
    .end local v7    # "i":I
    .end local v8    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPjMediaWaitingTone()I
    .locals 7

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->ensureDialtoneGen()I

    move-result v6

    .line 167
    .local v6, "status":I
    sget v0, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v6, v0, :cond_0

    .line 180
    :goto_0
    monitor-exit p0

    return v6

    .line 170
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->stopSending()V

    .line 172
    const/4 v0, 0x1

    new-array v3, v0, [Lorg/pjsip/pjsua/pjmedia_tone_desc;

    .line 173
    .local v3, "tone":[Lorg/pjsip/pjsua/pjmedia_tone_desc;
    const/4 v0, 0x0

    new-instance v1, Lorg/pjsip/pjsua/pjmedia_tone_desc;

    invoke-direct {v1}, Lorg/pjsip/pjsua/pjmedia_tone_desc;-><init>()V

    aput-object v1, v3, v0

    .line 174
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_desc;->setVolume(S)V

    .line 175
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_desc;->setOn_msec(S)V

    .line 176
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_desc;->setOff_msec(S)V

    .line 177
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/16 v1, 0x1b8

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_desc;->setFreq1(S)V

    .line 178
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_desc;->setFreq2(S)V

    .line 179
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    const-wide/16 v1, 0x1

    sget v4, Lorg/pjsip/pjsua/pjsuaConstants;->PJMEDIA_TONEGEN_LOOP:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsua;->pjmedia_tonegen_play(Lorg/pjsip/pjsua/pjmedia_port;J[Lorg/pjsip/pjsua/pjmedia_tone_desc;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v3    # "tone":[Lorg/pjsip/pjsua/pjmedia_tone_desc;
    .end local v6    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDialtoneGenerator()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 111
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->stopSending()V

    .line 113
    iget v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    if-eq v0, v1, :cond_0

    .line 114
    iget v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->conf_remove_port(I)I

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->pjmedia_port_destroy(Lorg/pjsip/pjsua/pjmedia_port;)I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->pj_pool_release(Lorg/pjsip/pjsua/pj_pool_t;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_2
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
