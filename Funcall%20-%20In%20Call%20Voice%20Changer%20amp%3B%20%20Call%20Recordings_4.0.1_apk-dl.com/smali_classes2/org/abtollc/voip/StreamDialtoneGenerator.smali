.class public Lorg/abtollc/voip/StreamDialtoneGenerator;
.super Ljava/lang/Object;
.source "StreamDialtoneGenerator.java"


# static fields
.field private static SUPPORTED_DTMF:Ljava/lang/String; = null

.field private static final THIS_FILE:Ljava/lang/String; = "PjStreamDialtoneGenerator"


# instance fields
.field private final callId:I

.field private dialtoneGen:Lorg/abtollc/jni/pjmedia_port;

.field private dialtonePool:Lorg/abtollc/jni/pj_pool_t;

.field private dialtoneSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "0123456789abcd*#"

    sput-object v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->SUPPORTED_DTMF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "aCallId"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneSlot:I

    .line 31
    iput p1, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->callId:I

    .line 32
    return-void
.end method

.method private declared-synchronized startDialtoneGenerator()I
    .locals 24

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    new-instance v18, Lorg/abtollc/jni/pjsua_call_info;

    invoke-direct/range {v18 .. v18}, Lorg/abtollc/jni/pjsua_call_info;-><init>()V

    .line 43
    .local v18, "info":Lorg/abtollc/jni/pjsua_call_info;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->callId:I

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lorg/abtollc/jni/pjsua;->call_get_info(ILorg/abtollc/jni/pjsua_call_info;)I

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tonegen-"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->callId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v20, 0x200

    const-wide/16 v22, 0x200

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-static {v4, v0, v1, v2, v3}, Lorg/abtollc/jni/pjsua;->pjsua_pool_create(Ljava/lang/String;JJ)Lorg/abtollc/jni/pj_pool_t;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtonePool:Lorg/abtollc/jni/pj_pool_t;

    .line 47
    const-string v4, "dialtoneGen"

    invoke-static {v4}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v5

    .line 48
    .local v5, "name":Lorg/abtollc/jni/pj_str_t;
    const-wide/16 v6, 0x1f40

    .line 49
    .local v6, "clockRate":J
    const-wide/16 v8, 0x1

    .line 50
    .local v8, "channelCount":J
    const-wide/16 v10, 0xa0

    .line 51
    .local v10, "samplesPerFrame":J
    const-wide/16 v12, 0x10

    .line 52
    .local v12, "bitsPerSample":J
    const-wide/16 v14, 0x0

    .line 53
    .local v14, "options":J
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .line 54
    .local v17, "dialtoneSlotPtr":[I
    new-instance v4, Lorg/abtollc/jni/pjmedia_port;

    invoke-direct {v4}, Lorg/abtollc/jni/pjmedia_port;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneGen:Lorg/abtollc/jni/pjmedia_port;

    .line 55
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtonePool:Lorg/abtollc/jni/pj_pool_t;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneGen:Lorg/abtollc/jni/pjmedia_port;

    move-object/from16 v16, v0

    invoke-static/range {v4 .. v16}, Lorg/abtollc/jni/pjsua;->pjmedia_tonegen_create2(Lorg/abtollc/jni/pj_pool_t;Lorg/abtollc/jni/pj_str_t;JJJJJLorg/abtollc/jni/pjmedia_port;)I

    move-result v19

    .line 56
    .local v19, "status":I
    sget v4, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    .line 57
    invoke-virtual/range {p0 .. p0}, Lorg/abtollc/voip/StreamDialtoneGenerator;->stopDialtoneGenerator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, v19

    .line 72
    :goto_0
    monitor-exit p0

    return v4

    .line 60
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtonePool:Lorg/abtollc/jni/pj_pool_t;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneGen:Lorg/abtollc/jni/pjmedia_port;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lorg/abtollc/jni/pjsua;->conf_add_port(Lorg/abtollc/jni/pj_pool_t;Lorg/abtollc/jni/pjmedia_port;[I)I

    move-result v19

    .line 61
    sget v4, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_1

    .line 62
    invoke-virtual/range {p0 .. p0}, Lorg/abtollc/voip/StreamDialtoneGenerator;->stopDialtoneGenerator()V

    move/from16 v4, v19

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    const/4 v4, 0x0

    aget v4, v17, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneSlot:I

    .line 66
    move-object/from16 v0, p0

    iget v4, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneSlot:I

    invoke-virtual/range {v18 .. v18}, Lorg/abtollc/jni/pjsua_call_info;->getConf_slot()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/abtollc/jni/pjsua;->conf_connect(II)I

    move-result v19

    .line 67
    sget v4, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_2

    .line 68
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneSlot:I

    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/abtollc/voip/StreamDialtoneGenerator;->stopDialtoneGenerator()V

    move/from16 v4, v19

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    sget v4, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v5    # "name":Lorg/abtollc/jni/pj_str_t;
    .end local v6    # "clockRate":J
    .end local v8    # "channelCount":J
    .end local v10    # "samplesPerFrame":J
    .end local v12    # "bitsPerSample":J
    .end local v14    # "options":J
    .end local v17    # "dialtoneSlotPtr":[I
    .end local v18    # "info":Lorg/abtollc/jni/pjsua_call_info;
    .end local v19    # "status":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public declared-synchronized sendPjMediaDialTone(Ljava/lang/String;)I
    .locals 10
    .param p1, "dtmfChars"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneGen:Lorg/abtollc/jni/pjmedia_port;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/abtollc/voip/StreamDialtoneGenerator;->startDialtoneGenerator()I

    move-result v8

    .line 104
    .local v8, "status":I
    sget v0, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v8, v0, :cond_0

    move v0, v9

    .line 126
    :goto_0
    monitor-exit p0

    return v0

    .line 108
    .end local v8    # "status":I
    :cond_0
    :try_start_1
    sget v8, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    .line 110
    .restart local v8    # "status":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 111
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 112
    .local v6, "d":C
    sget-object v0, Lorg/abtollc/voip/StreamDialtoneGenerator;->SUPPORTED_DTMF:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 113
    const-string v0, "PjStreamDialtoneGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported DTMF char "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 116
    :cond_1
    const/4 v0, 0x1

    new-array v3, v0, [Lorg/abtollc/jni/pjmedia_tone_digit;

    .line 117
    .local v3, "tone":[Lorg/abtollc/jni/pjmedia_tone_digit;
    const/4 v0, 0x0

    new-instance v1, Lorg/abtollc/jni/pjmedia_tone_digit;

    invoke-direct {v1}, Lorg/abtollc/jni/pjmedia_tone_digit;-><init>()V

    aput-object v1, v3, v0

    .line 118
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjmedia_tone_digit;->setVolume(S)V

    .line 119
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjmedia_tone_digit;->setOn_msec(S)V

    .line 120
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjmedia_tone_digit;->setOff_msec(S)V

    .line 121
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0, v6}, Lorg/abtollc/jni/pjmedia_tone_digit;->setDigit(C)V

    .line 122
    iget-object v0, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneGen:Lorg/abtollc/jni/pjmedia_port;

    const-wide/16 v1, 0x1

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsua;->pjmedia_tonegen_play_digits(Lorg/abtollc/jni/pjmedia_port;J[Lorg/abtollc/jni/pjmedia_tone_digit;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 102
    .end local v3    # "tone":[Lorg/abtollc/jni/pjmedia_tone_digit;
    .end local v6    # "d":C
    .end local v7    # "i":I
    .end local v8    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v7    # "i":I
    .restart local v8    # "status":I
    :cond_2
    move v0, v8

    .line 126
    goto :goto_0
.end method

.method public declared-synchronized stopDialtoneGenerator()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 82
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneSlot:I

    if-eq v0, v1, :cond_0

    .line 83
    iget v0, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneSlot:I

    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->conf_remove_port(I)I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneSlot:I

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtoneGen:Lorg/abtollc/jni/pjmedia_port;

    .line 90
    iget-object v0, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtonePool:Lorg/abtollc/jni/pj_pool_t;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtonePool:Lorg/abtollc/jni/pj_pool_t;

    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->pj_pool_release(Lorg/abtollc/jni/pj_pool_t;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/voip/StreamDialtoneGenerator;->dialtonePool:Lorg/abtollc/jni/pj_pool_t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
