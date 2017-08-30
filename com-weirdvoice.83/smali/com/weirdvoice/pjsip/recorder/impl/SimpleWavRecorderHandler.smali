.class public Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;
.super Ljava/lang/Object;
.source "SimpleWavRecorderHandler.java"

# interfaces
.implements Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;


# instance fields
.field final callInfo:Lcom/weirdvoice/api/SipCallSession;

.field private final recorderId:I

.field private final recordingPath:Ljava/lang/String;

.field final way:I


# direct methods
.method public constructor <init>(Lcom/weirdvoice/api/SipCallSession;Ljava/io/File;I)V
    .locals 10
    .param p1, "callInfo"    # Lcom/weirdvoice/api/SipCallSession;
    .param p2, "recordFolder"    # Ljava/io/File;
    .param p3, "way"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p3, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->way:I

    .line 48
    iput-object p1, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    .line 50
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4, p3}, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->getRecordFile(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 51
    .local v9, "targetFile":Ljava/io/File;
    if-nez v9, :cond_0

    .line 52
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No target file possible"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->recordingPath:Ljava/lang/String;

    .line 55
    iget-object v4, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->recordingPath:Ljava/lang/String;

    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v1

    .line 56
    .local v1, "file":Lorg/pjsip/pjsua/pj_str_t;
    const/4 v4, 0x1

    new-array v8, v4, [I

    .line 57
    .local v8, "rcId":[I
    const/4 v4, 0x0

    move-wide v6, v2

    invoke-static/range {v1 .. v8}, Lorg/pjsip/pjsua/pjsua;->recorder_create(Lorg/pjsip/pjsua/pj_str_t;J[BIJ[I)I

    move-result v0

    .line 58
    .local v0, "status":I
    sget v2, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    if-ne v0, v2, :cond_1

    .line 59
    aget v2, v8, v5

    iput v2, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->recorderId:I

    .line 63
    return-void

    .line 61
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pjsip not able to write the file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRecordFile(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "remoteContact"    # Ljava/lang/String;
    .param p3, "way"    # I

    .prologue
    .line 73
    if-eqz p1, :cond_2

    .line 78
    const-string v4, "yy-MM-dd_kkmmss"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, "datePart":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->sanitizeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "remotePart":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "fileName":Ljava/lang/String;
    const/4 v4, 0x3

    if-eq p3, v4, :cond_0

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_1

    const-string v4, "_out"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 85
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".wav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .end local v0    # "datePart":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "remotePart":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 82
    .restart local v0    # "datePart":Ljava/lang/String;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "remotePart":Ljava/lang/String;
    :cond_1
    const-string v4, "_in"

    goto :goto_0

    .line 88
    .end local v0    # "datePart":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "remotePart":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sanitizeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, ""

    .line 94
    .local v0, "fileName":Ljava/lang/String;
    move-object v0, p1

    .line 95
    :try_start_0
    const-string v3, ""

    .line 97
    .local v3, "tmp":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v0, v4, v5

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 108
    .end local v1    # "i":I
    :cond_0
    move-object v0, v3

    .line 113
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "tmp":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 102
    .restart local v1    # "i":I
    .restart local v2    # "parts":[Ljava/lang/String;
    .restart local v3    # "tmp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-eq v4, v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x32

    if-eq v4, v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x33

    if-eq v4, v5, :cond_2

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x34

    if-eq v4, v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x35

    if-eq v4, v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x36

    if-eq v4, v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-eq v4, v5, :cond_2

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x38

    if-eq v4, v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-ne v4, v5, :cond_3

    .line 105
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 101
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "i":I
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public fillBroadcastWithInfo(Landroid/content/Intent;)V
    .locals 2
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    .line 136
    const-string v0, "file_path"

    iget-object v1, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->recordingPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v0, "com.weirdvoice.sipcall.CALL_WAY"

    iget v1, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->way:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method public startRecording()V
    .locals 4

    .prologue
    .line 119
    iget v2, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->recorderId:I

    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->recorder_get_conf_port(I)I

    move-result v1

    .line 120
    .local v1, "wavPort":I
    iget v2, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->way:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 121
    iget-object v2, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v2}, Lcom/weirdvoice/api/SipCallSession;->getConfPort()I

    move-result v0

    .line 122
    .local v0, "wavConfPort":I
    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 124
    .end local v0    # "wavConfPort":I
    :cond_0
    iget v2, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->way:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 125
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 127
    :cond_1
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;->recorderId:I

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->recorder_destroy(I)I

    .line 132
    return-void
.end method
