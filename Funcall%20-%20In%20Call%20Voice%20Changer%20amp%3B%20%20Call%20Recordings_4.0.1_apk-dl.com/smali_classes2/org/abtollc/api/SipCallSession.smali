.class public final Lorg/abtollc/api/SipCallSession;
.super Ljava/lang/Object;
.source "SipCallSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/api/SipCallSession$StatusCode;,
        Lorg/abtollc/api/SipCallSession$MediaState;,
        Lorg/abtollc/api/SipCallSession$InvState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/abtollc/api/SipCallSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_CALL_ID:I = -0x1

.field public static final OPT_CALL_EXTRA_HEADERS:Ljava/lang/String; = "opt_call_extra_headers"

.field public static final OPT_CALL_VIDEO:Ljava/lang/String; = "opt_call_video"


# instance fields
.field private accId:Ljava/lang/String;

.field private callId:I

.field public callStart:J

.field private callState:I

.field private canRecord:Z

.field private confPort:I

.field private connectStart:J

.field private hasZrtp:Z

.field private isIncoming:Z

.field private isRecording:Z

.field private lastStatusCode:I

.field private lastStatusComment:Ljava/lang/String;

.field private mediaHasVideoStream:Z

.field private mediaSecure:Z

.field private mediaSecureInfo:Ljava/lang/String;

.field private mediaStatus:I

.field public primaryKey:I

.field private recordFile:Ljava/lang/String;

.field private remoteContact:Ljava/lang/String;

.field private zrtpSASVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lorg/abtollc/api/SipCallSession$1;

    invoke-direct {v0}, Lorg/abtollc/api/SipCallSession$1;-><init>()V

    sput-object v0, Lorg/abtollc/api/SipCallSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput v0, p0, Lorg/abtollc/api/SipCallSession;->primaryKey:I

    .line 168
    iput-wide v2, p0, Lorg/abtollc/api/SipCallSession;->callStart:J

    .line 170
    iput v0, p0, Lorg/abtollc/api/SipCallSession;->callId:I

    .line 171
    iput v0, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    .line 174
    iput v0, p0, Lorg/abtollc/api/SipCallSession;->confPort:I

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->accId:Ljava/lang/String;

    .line 176
    iput v1, p0, Lorg/abtollc/api/SipCallSession;->mediaStatus:I

    .line 177
    iput-boolean v1, p0, Lorg/abtollc/api/SipCallSession;->mediaSecure:Z

    .line 178
    iput-boolean v1, p0, Lorg/abtollc/api/SipCallSession;->mediaHasVideoStream:Z

    .line 179
    iput-wide v2, p0, Lorg/abtollc/api/SipCallSession;->connectStart:J

    .line 180
    iput v1, p0, Lorg/abtollc/api/SipCallSession;->lastStatusCode:I

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 183
    iput-boolean v1, p0, Lorg/abtollc/api/SipCallSession;->canRecord:Z

    .line 184
    iput-boolean v1, p0, Lorg/abtollc/api/SipCallSession;->isRecording:Z

    .line 185
    iput-boolean v1, p0, Lorg/abtollc/api/SipCallSession;->zrtpSASVerified:Z

    .line 186
    iput-boolean v1, p0, Lorg/abtollc/api/SipCallSession;->hasZrtp:Z

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->recordFile:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput v1, p0, Lorg/abtollc/api/SipCallSession;->primaryKey:I

    .line 168
    iput-wide v4, p0, Lorg/abtollc/api/SipCallSession;->callStart:J

    .line 170
    iput v1, p0, Lorg/abtollc/api/SipCallSession;->callId:I

    .line 171
    iput v1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    .line 174
    iput v1, p0, Lorg/abtollc/api/SipCallSession;->confPort:I

    .line 175
    const-string v1, ""

    iput-object v1, p0, Lorg/abtollc/api/SipCallSession;->accId:Ljava/lang/String;

    .line 176
    iput v2, p0, Lorg/abtollc/api/SipCallSession;->mediaStatus:I

    .line 177
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->mediaSecure:Z

    .line 178
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->mediaHasVideoStream:Z

    .line 179
    iput-wide v4, p0, Lorg/abtollc/api/SipCallSession;->connectStart:J

    .line 180
    iput v2, p0, Lorg/abtollc/api/SipCallSession;->lastStatusCode:I

    .line 181
    const-string v1, ""

    iput-object v1, p0, Lorg/abtollc/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 182
    const-string v1, ""

    iput-object v1, p0, Lorg/abtollc/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 183
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->canRecord:Z

    .line 184
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->isRecording:Z

    .line 185
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->zrtpSASVerified:Z

    .line 186
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->hasZrtp:Z

    .line 187
    const-string v1, ""

    iput-object v1, p0, Lorg/abtollc/api/SipCallSession;->recordFile:Ljava/lang/String;

    .line 229
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 231
    invoke-direct {p0, v0}, Lorg/abtollc/api/SipCallSession;->fromContentValues(Landroid/content/ContentValues;)V

    .line 232
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput v0, p0, Lorg/abtollc/api/SipCallSession;->primaryKey:I

    .line 168
    iput-wide v4, p0, Lorg/abtollc/api/SipCallSession;->callStart:J

    .line 170
    iput v0, p0, Lorg/abtollc/api/SipCallSession;->callId:I

    .line 171
    iput v0, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    .line 174
    iput v0, p0, Lorg/abtollc/api/SipCallSession;->confPort:I

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->accId:Ljava/lang/String;

    .line 176
    iput v2, p0, Lorg/abtollc/api/SipCallSession;->mediaStatus:I

    .line 177
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->mediaSecure:Z

    .line 178
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->mediaHasVideoStream:Z

    .line 179
    iput-wide v4, p0, Lorg/abtollc/api/SipCallSession;->connectStart:J

    .line 180
    iput v2, p0, Lorg/abtollc/api/SipCallSession;->lastStatusCode:I

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 183
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->canRecord:Z

    .line 184
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->isRecording:Z

    .line 185
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->zrtpSASVerified:Z

    .line 186
    iput-boolean v2, p0, Lorg/abtollc/api/SipCallSession;->hasZrtp:Z

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->recordFile:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipCallSession;->primaryKey:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipCallSession;->callId:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipCallSession;->mediaStatus:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->remoteContact:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/abtollc/api/SipCallSession;->setIncoming(Z)V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipCallSession;->confPort:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->accId:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipCallSession;->lastStatusCode:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/abtollc/api/SipCallSession;->connectStart:J

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->mediaSecure:Z

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/abtollc/api/SipCallSession;->setLastStatusComment(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lorg/abtollc/api/SipCallSession;->setMediaHasVideo(Z)V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->canRecord:Z

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->isRecording:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->hasZrtp:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_6
    iput-boolean v1, p0, Lorg/abtollc/api/SipCallSession;->zrtpSASVerified:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipCallSession;->recordFile:Ljava/lang/String;

    .line 215
    return-void

    :cond_0
    move v0, v2

    .line 201
    goto :goto_0

    :cond_1
    move v0, v2

    .line 207
    goto :goto_1

    :cond_2
    move v0, v2

    .line 209
    goto :goto_2

    :cond_3
    move v0, v2

    .line 210
    goto :goto_3

    :cond_4
    move v0, v2

    .line 211
    goto :goto_4

    :cond_5
    move v0, v2

    .line 212
    goto :goto_5

    :cond_6
    move v1, v2

    .line 213
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/abtollc/api/SipCallSession$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/abtollc/api/SipCallSession$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/abtollc/api/SipCallSession;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private fromContentValues(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "v"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x1

    .line 238
    const-string v4, "type"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 239
    .local v0, "tmp_i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_7

    :goto_0
    iput-boolean v3, p0, Lorg/abtollc/api/SipCallSession;->isIncoming:Z

    .line 242
    :cond_0
    const-string v3, "account_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "tmp_s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 244
    iput-object v2, p0, Lorg/abtollc/api/SipCallSession;->accId:Ljava/lang/String;

    .line 246
    :cond_1
    const-string v3, "status_code"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/abtollc/api/SipCallSession;->lastStatusCode:I

    .line 250
    :cond_2
    const-string v3, "status_text"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    if-eqz v2, :cond_3

    .line 252
    iput-object v2, p0, Lorg/abtollc/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 254
    :cond_3
    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    if-eqz v2, :cond_4

    .line 256
    iput-object v2, p0, Lorg/abtollc/api/SipCallSession;->remoteContact:Ljava/lang/String;

    .line 258
    :cond_4
    const-string v3, "call_record_fail"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    if-eqz v2, :cond_5

    .line 260
    iput-object v2, p0, Lorg/abtollc/api/SipCallSession;->recordFile:Ljava/lang/String;

    .line 262
    :cond_5
    const-string v3, "date"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 263
    .local v1, "tmp_l":Ljava/lang/Long;
    if-eqz v1, :cond_6

    .line 264
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/abtollc/api/SipCallSession;->callStart:J

    .line 266
    :cond_6
    return-void

    .line 240
    .end local v1    # "tmp_l":Ljava/lang/Long;
    .end local v2    # "tmp_s":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canRecord()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->canRecord:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    if-ne p1, p0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v1

    .line 322
    :cond_1
    instance-of v3, p1, Lorg/abtollc/api/SipCallSession;

    if-nez v3, :cond_2

    move v1, v2

    .line 323
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 325
    check-cast v0, Lorg/abtollc/api/SipCallSession;

    .line 326
    .local v0, "ci":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v3

    iget v4, p0, Lorg/abtollc/api/SipCallSession;->callId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 329
    goto :goto_0
.end method

.method public getAccId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/abtollc/api/SipCallSession;->accId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->callId:I

    return v0
.end method

.method public getCallStart()J
    .locals 2

    .prologue
    .line 702
    iget-wide v0, p0, Lorg/abtollc/api/SipCallSession;->callStart:J

    return-wide v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    return v0
.end method

.method public getConfPort()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->confPort:I

    return v0
.end method

.method public getConnectStart()J
    .locals 2

    .prologue
    .line 430
    iget-wide v0, p0, Lorg/abtollc/api/SipCallSession;->connectStart:J

    return-wide v0
.end method

.method public getHasZrtp()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->hasZrtp:Z

    return v0
.end method

.method public getLastStatusCode()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->lastStatusCode:I

    return v0
.end method

.method public getLastStatusComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lorg/abtollc/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSecureInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lorg/abtollc/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaStatus()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->mediaStatus:I

    return v0
.end method

.method public getRecordFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lorg/abtollc/api/SipCallSession;->recordFile:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/abtollc/api/SipCallSession;->remoteContact:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 451
    iget v1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAfterEnded()Z
    .locals 2

    .prologue
    .line 576
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeConfirmed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 564
    iget v1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->isIncoming:Z

    return v0
.end method

.method public isLocalHeld()Z
    .locals 2

    .prologue
    .line 545
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->mediaStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOngoing()Z
    .locals 2

    .prologue
    .line 462
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->callState:I

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
    .line 665
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->isRecording:Z

    return v0
.end method

.method public isRemoteHeld()Z
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->mediaStatus:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->mediaSecure:Z

    return v0
.end method

.method public isZrtpSASVerified()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->zrtpSASVerified:Z

    return v0
.end method

.method public mediaHasVideo()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->mediaHasVideoStream:Z

    return v0
.end method

.method public setAccId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accId2"    # Ljava/lang/String;

    .prologue
    .line 498
    iput-object p1, p0, Lorg/abtollc/api/SipCallSession;->accId:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setCallId(I)V
    .locals 0
    .param p1, "callId2"    # I

    .prologue
    .line 349
    iput p1, p0, Lorg/abtollc/api/SipCallSession;->callId:I

    .line 350
    return-void
.end method

.method public setCallStart(J)V
    .locals 1
    .param p1, "callStart"    # J

    .prologue
    .line 722
    iput-wide p1, p0, Lorg/abtollc/api/SipCallSession;->callStart:J

    .line 723
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .param p1, "callState2"    # I

    .prologue
    .line 369
    iput p1, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    .line 370
    return-void
.end method

.method public setCanRecord(Z)V
    .locals 0
    .param p1, "canRecord"    # Z

    .prologue
    .line 645
    iput-boolean p1, p0, Lorg/abtollc/api/SipCallSession;->canRecord:Z

    .line 646
    return-void
.end method

.method public setConfPort(I)V
    .locals 0
    .param p1, "confPort2"    # I

    .prologue
    .line 476
    iput p1, p0, Lorg/abtollc/api/SipCallSession;->confPort:I

    .line 477
    return-void
.end method

.method public setConnectStart(J)V
    .locals 1
    .param p1, "connectStart2"    # J

    .prologue
    .line 440
    iput-wide p1, p0, Lorg/abtollc/api/SipCallSession;->connectStart:J

    .line 441
    return-void
.end method

.method public setHasZrtp(Z)V
    .locals 0
    .param p1, "hasZrtp"    # Z

    .prologue
    .line 718
    iput-boolean p1, p0, Lorg/abtollc/api/SipCallSession;->hasZrtp:Z

    .line 719
    return-void
.end method

.method public setIncoming(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lorg/abtollc/api/SipCallSession;->isIncoming:Z

    .line 412
    return-void
.end method

.method public setIsRecording(Z)V
    .locals 0
    .param p1, "isRecording"    # Z

    .prologue
    .line 656
    iput-boolean p1, p0, Lorg/abtollc/api/SipCallSession;->isRecording:Z

    .line 657
    return-void
.end method

.method public setLastStatusCode(I)V
    .locals 0
    .param p1, "status_code"    # I

    .prologue
    .line 598
    iput p1, p0, Lorg/abtollc/api/SipCallSession;->lastStatusCode:I

    .line 599
    return-void
.end method

.method public setLastStatusComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastStatusComment"    # Ljava/lang/String;

    .prologue
    .line 616
    iput-object p1, p0, Lorg/abtollc/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 617
    return-void
.end method

.method public setMediaHasVideo(Z)V
    .locals 0
    .param p1, "mediaHasVideo"    # Z

    .prologue
    .line 635
    iput-boolean p1, p0, Lorg/abtollc/api/SipCallSession;->mediaHasVideoStream:Z

    .line 636
    return-void
.end method

.method public setMediaSecure(Z)V
    .locals 0
    .param p1, "mediaSecure2"    # Z

    .prologue
    .line 517
    iput-boolean p1, p0, Lorg/abtollc/api/SipCallSession;->mediaSecure:Z

    .line 518
    return-void
.end method

.method public setMediaSecureInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "aInfo"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lorg/abtollc/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setMediaStatus(I)V
    .locals 0
    .param p1, "mediaStatus2"    # I

    .prologue
    .line 382
    iput p1, p0, Lorg/abtollc/api/SipCallSession;->mediaStatus:I

    .line 383
    return-void
.end method

.method public setRecordFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "recordFile"    # Ljava/lang/String;

    .prologue
    .line 689
    iput-object p1, p0, Lorg/abtollc/api/SipCallSession;->recordFile:Ljava/lang/String;

    .line 690
    return-void
.end method

.method public setRemoteContact(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteContact2"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lorg/abtollc/api/SipCallSession;->remoteContact:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setZrtpSASVerified(Z)V
    .locals 0
    .param p1, "zrtpSASVerified"    # Z

    .prologue
    .line 698
    iput-boolean p1, p0, Lorg/abtollc/api/SipCallSession;->zrtpSASVerified:Z

    .line 699
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->primaryKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->callId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->callState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->mediaStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v0, p0, Lorg/abtollc/api/SipCallSession;->remoteContact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->confPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v0, p0, Lorg/abtollc/api/SipCallSession;->accId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget v0, p0, Lorg/abtollc/api/SipCallSession;->lastStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v0, p0, Lorg/abtollc/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-wide v4, p0, Lorg/abtollc/api/SipCallSession;->connectStart:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 290
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->mediaSecure:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->getLastStatusComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lorg/abtollc/api/SipCallSession;->mediaHasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->canRecord:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->isRecording:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->hasZrtp:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-boolean v0, p0, Lorg/abtollc/api/SipCallSession;->zrtpSASVerified:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Lorg/abtollc/api/SipCallSession;->recordFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    return-void

    :cond_0
    move v0, v2

    .line 284
    goto :goto_0

    :cond_1
    move v0, v2

    .line 290
    goto :goto_1

    :cond_2
    move v0, v2

    .line 292
    goto :goto_2

    :cond_3
    move v0, v2

    .line 293
    goto :goto_3

    :cond_4
    move v0, v2

    .line 294
    goto :goto_4

    :cond_5
    move v0, v2

    .line 295
    goto :goto_5

    :cond_6
    move v1, v2

    .line 296
    goto :goto_6
.end method
