.class public Lcom/weirdvoice/api/SipCallSession;
.super Ljava/lang/Object;
.source "SipCallSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/api/SipCallSession$InvState;,
        Lcom/weirdvoice/api/SipCallSession$MediaState;,
        Lcom/weirdvoice/api/SipCallSession$StatusCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/weirdvoice/api/SipCallSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_CALL_ID:I = -0x1

.field public static final OPT_CALL_EXTRA_HEADERS:Ljava/lang/String; = "opt_call_extra_headers"

.field public static final OPT_CALL_VIDEO:Ljava/lang/String; = "opt_call_video"

.field public static TRANSPORT_SECURE_FULL:I

.field public static TRANSPORT_SECURE_NONE:I

.field public static TRANSPORT_SECURE_TO_SERVER:I


# instance fields
.field protected accId:J

.field protected callId:I

.field protected callStart:J

.field protected callState:I

.field protected canRecord:Z

.field protected confPort:I

.field protected connectStart:J

.field protected hasZrtp:Z

.field protected isIncoming:Z

.field protected isRecording:Z

.field protected lastReasonCode:I

.field protected lastStatusCode:I

.field protected lastStatusComment:Ljava/lang/String;

.field protected mediaHasVideoStream:Z

.field protected mediaSecure:Z

.field protected mediaSecureInfo:Ljava/lang/String;

.field protected mediaStatus:I

.field public primaryKey:I

.field protected remoteContact:Ljava/lang/String;

.field protected transportSecure:I

.field protected zrtpSASVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    sput v0, Lcom/weirdvoice/api/SipCallSession;->TRANSPORT_SECURE_NONE:I

    .line 195
    const/4 v0, 0x1

    sput v0, Lcom/weirdvoice/api/SipCallSession;->TRANSPORT_SECURE_TO_SERVER:I

    .line 199
    const/4 v0, 0x2

    sput v0, Lcom/weirdvoice/api/SipCallSession;->TRANSPORT_SECURE_FULL:I

    .line 332
    new-instance v0, Lcom/weirdvoice/api/SipCallSession$1;

    invoke-direct {v0}, Lcom/weirdvoice/api/SipCallSession$1;-><init>()V

    sput-object v0, Lcom/weirdvoice/api/SipCallSession;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 340
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->primaryKey:I

    .line 214
    iput-wide v4, p0, Lcom/weirdvoice/api/SipCallSession;->callStart:J

    .line 216
    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->callId:I

    .line 217
    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    .line 220
    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->confPort:I

    .line 221
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/weirdvoice/api/SipCallSession;->accId:J

    .line 222
    iput v2, p0, Lcom/weirdvoice/api/SipCallSession;->mediaStatus:I

    .line 223
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecure:Z

    .line 224
    iput v2, p0, Lcom/weirdvoice/api/SipCallSession;->transportSecure:I

    .line 225
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideoStream:Z

    .line 226
    iput-wide v4, p0, Lcom/weirdvoice/api/SipCallSession;->connectStart:J

    .line 227
    iput v2, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusCode:I

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 229
    iput v2, p0, Lcom/weirdvoice/api/SipCallSession;->lastReasonCode:I

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 231
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->canRecord:Z

    .line 232
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->isRecording:Z

    .line 233
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->zrtpSASVerified:Z

    .line 234
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->hasZrtp:Z

    .line 255
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->primaryKey:I

    .line 214
    iput-wide v4, p0, Lcom/weirdvoice/api/SipCallSession;->callStart:J

    .line 216
    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->callId:I

    .line 217
    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    .line 220
    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->confPort:I

    .line 221
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/weirdvoice/api/SipCallSession;->accId:J

    .line 222
    iput v2, p0, Lcom/weirdvoice/api/SipCallSession;->mediaStatus:I

    .line 223
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecure:Z

    .line 224
    iput v2, p0, Lcom/weirdvoice/api/SipCallSession;->transportSecure:I

    .line 225
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideoStream:Z

    .line 226
    iput-wide v4, p0, Lcom/weirdvoice/api/SipCallSession;->connectStart:J

    .line 227
    iput v2, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusCode:I

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 229
    iput v2, p0, Lcom/weirdvoice/api/SipCallSession;->lastReasonCode:I

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 231
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->canRecord:Z

    .line 232
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->isRecording:Z

    .line 233
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->zrtpSASVerified:Z

    .line 234
    iput-boolean v2, p0, Lcom/weirdvoice/api/SipCallSession;->hasZrtp:Z

    .line 243
    invoke-direct {p0, p1}, Lcom/weirdvoice/api/SipCallSession;->initFromParcel(Landroid/os/Parcel;)V

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/weirdvoice/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/weirdvoice/api/SipCallSession;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/weirdvoice/api/SipCallSession;)V
    .locals 8
    .param p1, "callInfo"    # Lcom/weirdvoice/api/SipCallSession;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput v1, p0, Lcom/weirdvoice/api/SipCallSession;->primaryKey:I

    .line 214
    iput-wide v6, p0, Lcom/weirdvoice/api/SipCallSession;->callStart:J

    .line 216
    iput v1, p0, Lcom/weirdvoice/api/SipCallSession;->callId:I

    .line 217
    iput v1, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    .line 220
    iput v1, p0, Lcom/weirdvoice/api/SipCallSession;->confPort:I

    .line 221
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/weirdvoice/api/SipCallSession;->accId:J

    .line 222
    iput v4, p0, Lcom/weirdvoice/api/SipCallSession;->mediaStatus:I

    .line 223
    iput-boolean v4, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecure:Z

    .line 224
    iput v4, p0, Lcom/weirdvoice/api/SipCallSession;->transportSecure:I

    .line 225
    iput-boolean v4, p0, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideoStream:Z

    .line 226
    iput-wide v6, p0, Lcom/weirdvoice/api/SipCallSession;->connectStart:J

    .line 227
    iput v4, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusCode:I

    .line 228
    const-string v1, ""

    iput-object v1, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 229
    iput v4, p0, Lcom/weirdvoice/api/SipCallSession;->lastReasonCode:I

    .line 230
    const-string v1, ""

    iput-object v1, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 231
    iput-boolean v4, p0, Lcom/weirdvoice/api/SipCallSession;->canRecord:Z

    .line 232
    iput-boolean v4, p0, Lcom/weirdvoice/api/SipCallSession;->isRecording:Z

    .line 233
    iput-boolean v4, p0, Lcom/weirdvoice/api/SipCallSession;->zrtpSASVerified:Z

    .line 234
    iput-boolean v4, p0, Lcom/weirdvoice/api/SipCallSession;->hasZrtp:Z

    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 263
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p1, v0, v4}, Lcom/weirdvoice/api/SipCallSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 265
    invoke-direct {p0, v0}, Lcom/weirdvoice/api/SipCallSession;->initFromParcel(Landroid/os/Parcel;)V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->primaryKey:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->callId:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaStatus:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->remoteContact:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->isIncoming:Z

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->confPort:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/weirdvoice/api/SipCallSession;->accId:J

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusCode:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/weirdvoice/api/SipCallSession;->connectStart:J

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecure:Z

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideoStream:Z

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->canRecord:Z

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->isRecording:Z

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->hasZrtp:Z

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/weirdvoice/api/SipCallSession;->zrtpSASVerified:Z

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->transportSecure:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/api/SipCallSession;->lastReasonCode:I

    .line 290
    return-void

    :cond_0
    move v0, v2

    .line 275
    goto :goto_0

    :cond_1
    move v0, v2

    .line 281
    goto :goto_1

    :cond_2
    move v0, v2

    .line 283
    goto :goto_2

    :cond_3
    move v0, v2

    .line 284
    goto :goto_3

    :cond_4
    move v0, v2

    .line 285
    goto :goto_4

    :cond_5
    move v0, v2

    .line 286
    goto :goto_5

    :cond_6
    move v1, v2

    .line 287
    goto :goto_6
.end method


# virtual methods
.method public canRecord()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->canRecord:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    if-ne p1, p0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v1

    .line 353
    :cond_1
    instance-of v3, p1, Lcom/weirdvoice/api/SipCallSession;

    if-nez v3, :cond_2

    move v1, v2

    .line 354
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 356
    check-cast v0, Lcom/weirdvoice/api/SipCallSession;

    .line 357
    .local v0, "ci":Lcom/weirdvoice/api/SipCallSession;
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v3

    iget v4, p0, Lcom/weirdvoice/api/SipCallSession;->callId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 360
    goto :goto_0
.end method

.method public getAccId()J
    .locals 2

    .prologue
    .line 457
    iget-wide v0, p0, Lcom/weirdvoice/api/SipCallSession;->accId:J

    return-wide v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->callId:I

    return v0
.end method

.method public getCallStart()J
    .locals 2

    .prologue
    .line 603
    iget-wide v0, p0, Lcom/weirdvoice/api/SipCallSession;->callStart:J

    return-wide v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    return v0
.end method

.method public getConfPort()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->confPort:I

    return v0
.end method

.method public getConnectStart()J
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/weirdvoice/api/SipCallSession;->connectStart:J

    return-wide v0
.end method

.method public getHasZrtp()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->hasZrtp:Z

    return v0
.end method

.method public getLastReasonCode()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->lastReasonCode:I

    return v0
.end method

.method public getLastStatusCode()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusCode:I

    return v0
.end method

.method public getLastStatusComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSecureInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaStatus()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaStatus:I

    return v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->remoteContact:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportSecureLevel()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->transportSecure:I

    return v0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 423
    iget v1, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 424
    iget v1, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 423
    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isAfterEnded()Z
    .locals 2

    .prologue
    .line 524
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBeforeConfirmed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 512
    iget v1, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 513
    iget v1, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 512
    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->isIncoming:Z

    return v0
.end method

.method public isLocalHeld()Z
    .locals 2

    .prologue
    .line 493
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaSecure()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecure:Z

    return v0
.end method

.method public isOngoing()Z
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->isRecording:Z

    return v0
.end method

.method public isRemoteHeld()Z
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaStatus:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/weirdvoice/api/SipCallSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZrtpSASVerified()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->zrtpSASVerified:Z

    return v0
.end method

.method public mediaHasVideo()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideoStream:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->primaryKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->callId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->callState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->remoteContact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->confPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-wide v4, p0, Lcom/weirdvoice/api/SipCallSession;->accId:J

    long-to-int v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->lastStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-object v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-wide v4, p0, Lcom/weirdvoice/api/SipCallSession;->connectStart:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 317
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->mediaSecure:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {p0}, Lcom/weirdvoice/api/SipCallSession;->getLastStatusComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->canRecord:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->isRecording:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->hasZrtp:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-boolean v0, p0, Lcom/weirdvoice/api/SipCallSession;->zrtpSASVerified:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->transportSecure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget v0, p0, Lcom/weirdvoice/api/SipCallSession;->lastReasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    return-void

    :cond_0
    move v0, v2

    .line 311
    goto :goto_0

    :cond_1
    move v0, v2

    .line 317
    goto :goto_1

    :cond_2
    move v0, v2

    .line 319
    goto :goto_2

    :cond_3
    move v0, v2

    .line 320
    goto :goto_3

    :cond_4
    move v0, v2

    .line 321
    goto :goto_4

    :cond_5
    move v0, v2

    .line 322
    goto :goto_5

    :cond_6
    move v1, v2

    .line 323
    goto :goto_6
.end method
