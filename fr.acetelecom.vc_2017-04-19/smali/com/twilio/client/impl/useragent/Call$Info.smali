.class public Lcom/twilio/client/impl/useragent/Call$Info;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/useragent/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private callId:Ljava/lang/String;

.field private confSlot:Lcom/twilio/client/impl/useragent/ConfPort;

.field private lastStatus:I

.field private mediaStatus:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

.field private remoteContact:Ljava/lang/String;

.field private state:Lcom/twilio/client/impl/session/InviteState;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Call$Info;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getConfSlot()Lcom/twilio/client/impl/useragent/ConfPort;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Call$Info;->confSlot:Lcom/twilio/client/impl/useragent/ConfPort;

    return-object v0
.end method

.method public getLastStatus()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/Call$Info;->lastStatus:I

    return v0
.end method

.method public getMediaStatus()Lcom/twilio/client/impl/useragent/Call$MediaStatus;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Call$Info;->mediaStatus:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    return-object v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Call$Info;->remoteContact:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/twilio/client/impl/session/InviteState;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Call$Info;->state:Lcom/twilio/client/impl/session/InviteState;

    return-object v0
.end method
