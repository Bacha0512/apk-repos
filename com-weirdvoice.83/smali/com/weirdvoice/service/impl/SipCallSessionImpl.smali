.class public Lcom/weirdvoice/service/impl/SipCallSessionImpl;
.super Lcom/weirdvoice/api/SipCallSession;
.source "SipCallSessionImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/weirdvoice/api/SipCallSession;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iput-boolean v2, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->isIncoming:Z

    .line 215
    iput v2, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->mediaStatus:I

    .line 216
    iput-boolean v2, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->mediaSecure:Z

    .line 217
    iput-boolean v2, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->mediaHasVideoStream:Z

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->callStart:J

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->mediaSecureInfo:Ljava/lang/String;

    .line 220
    iput-boolean v2, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->canRecord:Z

    .line 221
    iput-boolean v2, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->isRecording:Z

    .line 222
    iput-boolean v2, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->zrtpSASVerified:Z

    .line 223
    iput-boolean v2, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->hasZrtp:Z

    .line 224
    return-void
.end method

.method public setAccId(J)V
    .locals 1
    .param p1, "accId2"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->accId:J

    .line 62
    return-void
.end method

.method public setCallId(I)V
    .locals 0
    .param p1, "callId2"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->callId:I

    .line 36
    return-void
.end method

.method public setCallStart(J)V
    .locals 1
    .param p1, "callStart"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->callStart:J

    .line 43
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->callState:I

    .line 52
    return-void
.end method

.method public setCanRecord(Z)V
    .locals 0
    .param p1, "canRecord"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->canRecord:Z

    .line 179
    return-void
.end method

.method public setConfPort(I)V
    .locals 0
    .param p1, "confPort2"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->confPort:I

    .line 160
    return-void
.end method

.method public setConnectStart(J)V
    .locals 1
    .param p1, "connectStart2"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->connectStart:J

    .line 150
    return-void
.end method

.method public setHasZrtp(Z)V
    .locals 0
    .param p1, "hasZrtp"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->hasZrtp:Z

    .line 202
    return-void
.end method

.method public setIncoming(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->isIncoming:Z

    .line 140
    return-void
.end method

.method public setIsRecording(Z)V
    .locals 0
    .param p1, "isRecording"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->isRecording:Z

    .line 188
    return-void
.end method

.method public setLastReasonCode(I)V
    .locals 0
    .param p1, "lastReasonCode"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->lastReasonCode:I

    .line 120
    return-void
.end method

.method public setLastStatusCode(I)V
    .locals 0
    .param p1, "status_code"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->lastStatusCode:I

    .line 102
    return-void
.end method

.method public setLastStatusComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastStatusComment"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->lastStatusComment:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setMediaHasVideo(Z)V
    .locals 0
    .param p1, "mediaHasVideo"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->mediaHasVideoStream:Z

    .line 170
    return-void
.end method

.method public setMediaSecure(Z)V
    .locals 0
    .param p1, "mediaSecure2"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->mediaSecure:Z

    .line 81
    return-void
.end method

.method public setMediaSecureInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "aInfo"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->mediaSecureInfo:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setMediaStatus(I)V
    .locals 0
    .param p1, "mediaStatus2"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->mediaStatus:I

    .line 211
    return-void
.end method

.method public setRemoteContact(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteContact2"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->remoteContact:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setSignalisationSecure(I)V
    .locals 0
    .param p1, "transportSecure2"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->transportSecure:I

    .line 71
    return-void
.end method

.method public setZrtpSASVerified(Z)V
    .locals 0
    .param p1, "zrtpSASVerified"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->zrtpSASVerified:Z

    .line 195
    return-void
.end method
