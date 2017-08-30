.class public Lcom/twilio/client/impl/useragent/Call;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/impl/analytics/RTCStatsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/useragent/Call$Info;,
        Lcom/twilio/client/impl/useragent/Call$MediaStatus;
    }
.end annotation


# instance fields
.field private account:Lcom/twilio/client/impl/session/Account;

.field private callId:I

.field private mediaServerAddress:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/twilio/client/impl/session/Account;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    iput-object p2, p0, Lcom/twilio/client/impl/useragent/Call;->account:Lcom/twilio/client/impl/session/Account;

    iput-object p3, p0, Lcom/twilio/client/impl/useragent/Call;->uri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/session/Account;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/useragent/Call;->account:Lcom/twilio/client/impl/session/Account;

    iput-object p2, p0, Lcom/twilio/client/impl/useragent/Call;->uri:Ljava/lang/String;

    iput-object p3, p0, Lcom/twilio/client/impl/useragent/Call;->userData:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/session/Account;Ljava/lang/String;Ljava/lang/Object;Lcom/twilio/client/impl/useragent/MessageData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/useragent/Call;->account:Lcom/twilio/client/impl/session/Account;

    iput-object p2, p0, Lcom/twilio/client/impl/useragent/Call;->uri:Ljava/lang/String;

    iput-object p3, p0, Lcom/twilio/client/impl/useragent/Call;->userData:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Lcom/twilio/client/impl/useragent/Call;->makeCall(Lcom/twilio/client/impl/session/Account;Ljava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;)V

    return-void
.end method

.method private native answer(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native dialDTMF(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native getCallInfo(I)Lcom/twilio/client/impl/useragent/Call$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native getConfPort(I)Lcom/twilio/client/impl/useragent/ConfPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native hangup(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native nativeGetStats(I)Lcom/twilio/client/impl/analytics/RTCStatsSample;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native reject(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native sendReinvite(Lcom/twilio/client/impl/session/Account;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native setUserData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method


# virtual methods
.method public answer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/twilio/client/impl/useragent/Call;->answer(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;I)V

    return-void
.end method

.method public answer(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twilio/client/impl/useragent/Call;->answer(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;I)V

    return-void
.end method

.method public dialDTMF(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, p1, v0}, Lcom/twilio/client/impl/useragent/Call;->dialDTMF(Ljava/lang/String;I)V

    return-void
.end method

.method public getAccount()Lcom/twilio/client/impl/session/Account;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Call;->account:Lcom/twilio/client/impl/session/Account;

    return-object v0
.end method

.method public getCallId()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    return v0
.end method

.method public getCallInfo()Lcom/twilio/client/impl/useragent/Call$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/Call;->getCallInfo(I)Lcom/twilio/client/impl/useragent/Call$Info;

    move-result-object v0

    return-object v0
.end method

.method public getConfPort()Lcom/twilio/client/impl/useragent/ConfPort;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/Call;->getConfPort(I)Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v0

    return-object v0
.end method

.method public getMediaServerAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Call;->mediaServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStats()Lcom/twilio/client/impl/analytics/RTCStatsSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/Call;->nativeGetStats(I)Lcom/twilio/client/impl/analytics/RTCStatsSample;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Call;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Call;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hangup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/twilio/client/impl/useragent/Call;->hangup(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;I)V

    return-void
.end method

.method public hangup(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/twilio/client/impl/useragent/Call;->hangup(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;I)V

    return-void
.end method

.method public native makeCall(Lcom/twilio/client/impl/session/Account;Ljava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public reject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/twilio/client/impl/useragent/Call;->reject(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;)V

    return-void
.end method

.method public reject(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twilio/client/impl/useragent/Call;->reject(ILjava/lang/String;Lcom/twilio/client/impl/useragent/MessageData;I)V

    return-void
.end method

.method public sendReinvite(Lcom/twilio/client/impl/session/Account;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twilio/client/impl/useragent/Call;->sendReinvite(Lcom/twilio/client/impl/session/Account;Ljava/lang/String;I)V

    return-void
.end method

.method public setCallId(I)V
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    return-void
.end method

.method public setMediaServerAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/useragent/Call;->mediaServerAddress:Ljava/lang/String;

    return-void
.end method

.method public setUserData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Call;->callId:I

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/Call;->setUserData(I)V

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/useragent/Call;->userData:Ljava/lang/Object;

    return-void
.end method
