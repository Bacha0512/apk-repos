.class public Lcom/twilio/client/impl/InternalConnectionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/impl/InternalConnection;
.implements Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;
.implements Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;,
        Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;,
        Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twilio/client/impl/InternalConnectionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field callHandle:Ljava/lang/Object;

.field private callManager:Lcom/twilio/client/impl/CallControlManager;

.field device:Lcom/twilio/client/impl/DeviceImpl;

.field incomingCallSID:Ljava/lang/String;

.field incomingCallSoundId:Ljava/util/concurrent/atomic/AtomicInteger;

.field isIncoming:Z

.field listener:Lcom/twilio/client/ConnectionListener;

.field private monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

.field muted:Z

.field private outgoingCallSID:Ljava/lang/String;

.field parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private payload:Lorg/json/JSONArray;

.field private publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

.field state:Lcom/twilio/client/impl/InternalConnection$InternalState;

.field private statsSampleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/analytics/RTCStatsSample;",
            ">;"
        }
    .end annotation
.end field

.field private tempCallSid:Ljava/lang/String;

.field token:Ljava/lang/String;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/InternalConnectionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twilio/client/impl/InternalConnectionImpl;->$assertionsDisabled:Z

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$1;

    invoke-direct {v0}, Lcom/twilio/client/impl/InternalConnectionImpl$1;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v0, Lcom/twilio/client/Connection;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/twilio/client/impl/CallControlManager;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->uuid:Ljava/util/UUID;

    iput-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callHandle:Ljava/lang/Object;

    iput-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    iput-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    iput-boolean v2, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming:Z

    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->UNINITIALIZED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iput-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->parameters:Ljava/util/Map;

    iput-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->incomingCallSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->token:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->incomingCallSoundId:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    iput-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->outgoingCallSID:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->tempCallSid:Ljava/lang/String;

    iput-object p1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    return-void
.end method

.method private getClientName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/CapabilityTokenParseException;
        }
    .end annotation

    new-instance v0, Lcom/twilio/client/impl/CapabilityTokenParser;

    iget-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->token:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/CapabilityTokenParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/twilio/client/impl/CapabilityTokenParser;->getClientName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCommon(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Lcom/twilio/client/ConnectionListener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/impl/DeviceImpl;",
            "Ljava/lang/String;",
            "Lcom/twilio/client/ConnectionListener;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->parameters:Ljava/util/Map;

    iput-object p3, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->token:Ljava/lang/String;

    iput-object p2, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p5, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming:Z

    invoke-virtual {p0, p4}, Lcom/twilio/client/impl/InternalConnectionImpl;->setConnectionListener(Lcom/twilio/client/ConnectionListener;)V

    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->UNINITIALIZED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    new-instance v0, Lcom/twilio/client/impl/analytics/EventPublisher;

    const-string v1, "twilio-client-android"

    iget-object v2, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v2}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilityToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/analytics/EventPublisher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/analytics/EventPublisher;->addListener(Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;)V

    return-void
.end method

.method private publishConnectionEvent(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/CapabilityTokenParseException;
        }
    .end annotation

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publishing event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getIncomingCallSid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getOutgoingCallSid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    invoke-direct {v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->callSid(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->tempCallSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->tempCallSid(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->INCOMING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->direction(Lcom/twilio/client/impl/analytics/Constants$Direction;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    const-string v1, "twilio-client-android"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->productName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->clientName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payLoadType(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->build()Lcom/twilio/client/impl/analytics/EventPayload;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/EventPayload;->getPayload()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    sget-object v2, Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;->INFO:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    const-string v3, "connection"

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/twilio/client/impl/analytics/EventPublisher;->publish(Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->OUTGOING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    goto :goto_2
.end method


# virtual methods
.method public accept()V
    .locals 4

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    sget-object v1, Lcom/twilio/client/impl/InternalConnection$InternalState;->PENDING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->incomingCallSoundId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getMediaManager()Lcom/twilio/client/impl/MediaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getMediaManager()Lcom/twilio/client/impl/MediaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/MediaManager;->cancel(I)V

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getCurrentActiveConnection()Lcom/twilio/client/impl/InternalConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Cannot accept new connection while another connection is in progress"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->CONNECTING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/twilio/client/Device$Capability;->APPLICATION_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/twilio/client/Device$Capability;->APPLICATION_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v3, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->parameters:Ljava/util/Map;

    invoke-virtual {v2, p0, v0, v1, v3}, Lcom/twilio/client/impl/CallControlManager;->acceptCall(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/DeviceImpl;->rejectAllPendingExcept(Lcom/twilio/client/Connection;)V

    const-string v0, "accepted-by-local"

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/InternalConnectionImpl;->publishConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Accepting call failed"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "chunder-incoming"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public connect()V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    sget-object v1, Lcom/twilio/client/impl/InternalConnection$InternalState;->UNINITIALIZED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-ne v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->CONNECTING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/twilio/client/Device$Capability;->APPLICATION_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v2}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/twilio/client/Device$Capability;->APPLICATION_PARAMETERS:Lcom/twilio/client/Device$Capability;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/twilio/client/impl/CallControlManager;->makeCall(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->CONNECTION_DECLINED:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/twilio/client/impl/TwilioError;->CONNECTION_DECLINED:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v3}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Token does not allow outgoing calls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    invoke-interface {v3, p0, v1, v2}, Lcom/twilio/client/ConnectionListener;->onDisconnected(Lcom/twilio/client/Connection;ILjava/lang/String;)V

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Connecting call failed"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    sget-object v1, Lcom/twilio/client/impl/InternalConnection$InternalState;->UNINITIALIZED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    sget-object v1, Lcom/twilio/client/impl/InternalConnection$InternalState;->CONNECTED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    sget-object v1, Lcom/twilio/client/impl/InternalConnection$InternalState;->CONNECTING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-ne v0, v1, :cond_2

    :cond_0
    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->DISCONNECTING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/CallControlManager;->hangupCall(Lcom/twilio/client/impl/InternalConnection;)V

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->statsSampleList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->statsSampleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    const-string v1, "call-quality-stats"

    const-string v2, "call-metric-event"

    iget-object v3, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->payload:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twilio/client/impl/analytics/EventPublisher;->publishMetrics(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->statsSampleList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Disconnecting call failed"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCallHandle()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callHandle:Ljava/lang/Object;

    return-object v0
.end method

.method public getDevice()Lcom/twilio/client/impl/DeviceImpl;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    return-object v0
.end method

.method public getIncomingCallSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->incomingCallSID:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalState()Lcom/twilio/client/impl/InternalConnection$InternalState;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    return-object v0
.end method

.method public getOutgoingCallSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->outgoingCallSID:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->parameters:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/twilio/client/Connection$State;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$2;->$SwitchMap$com$twilio$client$impl$InternalConnection$InternalState:[I

    iget-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    invoke-virtual {v1}, Lcom/twilio/client/impl/InternalConnection$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/twilio/client/Connection$State;->DISCONNECTED:Lcom/twilio/client/Connection$State;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/twilio/client/Connection$State;->PENDING:Lcom/twilio/client/Connection$State;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/twilio/client/Connection$State;->CONNECTING:Lcom/twilio/client/Connection$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/twilio/client/Connection$State;->CONNECTED:Lcom/twilio/client/Connection$State;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public handleStateCalling()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    invoke-interface {v0, p0}, Lcom/twilio/client/ConnectionListener;->onConnecting(Lcom/twilio/client/Connection;)V

    :cond_0
    return-void
.end method

.method public handleStateConfirmed()V
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->CONNECTED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    invoke-interface {v0, p0}, Lcom/twilio/client/ConnectionListener;->onConnected(Lcom/twilio/client/Connection;)V

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/DeviceImpl;->didConnect(Lcom/twilio/client/Connection;)V

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/twilio/client/impl/analytics/RTCMonitor;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callHandle:Ljava/lang/Object;

    check-cast v0, Lcom/twilio/client/impl/useragent/Call;

    invoke-direct {v1, v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;-><init>(Lcom/twilio/client/impl/analytics/RTCStatsProvider;)V

    iput-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->addListener(Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;)V

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public handleStateConnecting()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    invoke-interface {v0, p0}, Lcom/twilio/client/ConnectionListener;->onConnecting(Lcom/twilio/client/Connection;)V

    :cond_0
    return-void
.end method

.method public handleStateDisconnected(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    sget-object v1, Lcom/twilio/client/impl/InternalConnection$InternalState;->DISCONNECTED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->DISCONNECTED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->monitor:Lcom/twilio/client/impl/analytics/RTCMonitor;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->statsSampleList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->statsSampleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    const-string v1, "call-quality-stats"

    const-string v2, "call-metric-event"

    iget-object v3, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->payload:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twilio/client/impl/analytics/EventPublisher;->publishMetrics(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->statsSampleList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->incomingCallSoundId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getMediaManager()Lcom/twilio/client/impl/MediaManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getMediaManager()Lcom/twilio/client/impl/MediaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/MediaManager;->cancel(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getCallHandle()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->isDisconnectSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getMediaManager()Lcom/twilio/client/impl/MediaManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getMediaManager()Lcom/twilio/client/impl/MediaManager;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/MediaManager$StockSound;->DISCONNECT:Lcom/twilio/client/impl/MediaManager$StockSound;

    invoke-virtual {v0, v1, v5}, Lcom/twilio/client/impl/MediaManager;->queueSound(Lcom/twilio/client/impl/MediaManager$StockSound;I)I

    :cond_3
    invoke-virtual {p0, v4}, Lcom/twilio/client/impl/InternalConnectionImpl;->setCallHandle(Ljava/lang/Object;)V

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/twilio/client/ConnectionListener;->onDisconnected(Lcom/twilio/client/Connection;ILjava/lang/String;)V

    :goto_1
    :try_start_1
    const-string v0, "error"

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/InternalConnectionImpl;->publishConnectionEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/DeviceImpl;->didDisconnect(Lcom/twilio/client/Connection;)V

    :cond_4
    iput-object v4, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callHandle:Ljava/lang/Object;

    :cond_5
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection disconnected with error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/CapabilityTokenParseException;->printStackTrace()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    invoke-interface {v0, p0}, Lcom/twilio/client/ConnectionListener;->onDisconnected(Lcom/twilio/client/Connection;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Connection disconnected successfully."

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleStateEarly()V
    .locals 0

    return-void
.end method

.method public handleStateIncoming()V
    .locals 0

    return-void
.end method

.method public ignore()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twilio/client/impl/InternalConnectionImpl;->handleStateDisconnected(ILjava/lang/String;)V

    :try_start_0
    const-string v0, "ignored-by-local"

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/InternalConnectionImpl;->publishConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/CapabilityTokenParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public initIncomingConnection(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/impl/DeviceImpl;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incomingCallSID parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/twilio/client/impl/InternalConnectionImpl;->initCommon(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Lcom/twilio/client/ConnectionListener;Z)V

    iput-object p4, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->incomingCallSID:Ljava/lang/String;

    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->PENDING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    :try_start_0
    const-string v0, "incoming"

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/InternalConnectionImpl;->publishConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/CapabilityTokenParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public initOutgoingConnection(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Lcom/twilio/client/ConnectionListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/impl/DeviceImpl;",
            "Ljava/lang/String;",
            "Lcom/twilio/client/ConnectionListener;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/twilio/client/impl/InternalConnectionImpl;->initCommon(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Lcom/twilio/client/ConnectionListener;Z)V

    return-void
.end method

.method public isIncoming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->muted:Z

    return v0
.end method

.method public onError(Lcom/twilio/client/impl/analytics/ErrorInfo;)V
    .locals 3

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error publishing data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twilio/client/impl/analytics/ErrorInfo;->getErrorText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twilio/client/impl/analytics/ErrorInfo;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSample(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V
    .locals 4

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getIncomingCallSid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->setCallSid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->payload:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->payload:Lorg/json/JSONArray;

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->payload:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->payload:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    const-string v1, "call-quality-stats"

    const-string v2, "call-metric-event"

    iget-object v3, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->payload:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twilio/client/impl/analytics/EventPublisher;->publishMetrics(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->payload:Lorg/json/JSONArray;

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getOutgoingCallSid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->payload:Lorg/json/JSONArray;

    goto :goto_2
.end method

.method public onWarning(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getIncomingCallSid()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    const-string v0, "WarningName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "WarningParam"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "threshold"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v2, "RecentSampleValue"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    const-string v2, "RecentSamples"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_IN_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-virtual {v7}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_OUT_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-virtual {v7}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    const-string v5, "audio-level-warning-raised"

    :goto_2
    :try_start_0
    new-instance v7, Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    invoke-direct {v7}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;-><init>()V

    invoke-virtual {v7, v3}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->callSid(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/twilio/client/impl/analytics/Constants$Direction;->INCOMING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    :goto_3
    invoke-virtual {v7, v3}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->direction(Lcom/twilio/client/impl/analytics/Constants$Direction;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v3

    const-string v7, "twilio-client-android"

    invoke-virtual {v3, v7}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->productName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v3

    invoke-direct {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getClientName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->clientName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->sampleList(Ljava/util/List;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->sampleValue(I)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityParam(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityThreshold(I)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v1

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payLoadType(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->build()Lcom/twilio/client/impl/analytics/EventPayload;
    :try_end_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lcom/twilio/client/impl/analytics/EventPayload;->getPayload()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    sget-object v3, Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;->WARNING:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    invoke-virtual {v0}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v5, v0, v1}, Lcom/twilio/client/impl/analytics/EventPublisher;->publish(Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getOutgoingCallSid()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_0

    :cond_2
    const-string v2, "RecentSampleValue"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v2

    goto/16 :goto_1

    :cond_3
    const-string v5, "network-quality-warning-raised"

    goto :goto_2

    :cond_4
    :try_start_2
    sget-object v3, Lcom/twilio/client/impl/analytics/Constants$Direction;->OUTGOING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/CapabilityTokenParseException;->printStackTrace()V

    goto :goto_4
.end method

.method public onWarningCleared(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V
    .locals 5

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getIncomingCallSid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_IN_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-virtual {v2}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_OUT_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-virtual {v2}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "audio-level-warning-cleared"

    :goto_1
    :try_start_0
    new-instance v2, Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    invoke-direct {v2}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->callSid(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->INCOMING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    :goto_2
    invoke-virtual {v2, v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->direction(Lcom/twilio/client/impl/analytics/Constants$Direction;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    const-string v2, "twilio-client-android"

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->productName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getClientName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->clientName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    const-string v2, "application/json"

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payLoadType(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->build()Lcom/twilio/client/impl/analytics/EventPayload;
    :try_end_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/EventPayload;->getPayload()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    sget-object v3, Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;->INFO:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    invoke-virtual {p1}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/twilio/client/impl/analytics/EventPublisher;->publish(Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getOutgoingCallSid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "network-quality-warning-cleared"

    goto :goto_1

    :cond_3
    :try_start_2
    sget-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->OUTGOING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/CapabilityTokenParseException;->printStackTrace()V

    goto :goto_3
.end method

.method public play(Ljava/lang/String;Z)Lcom/twilio/client/impl/useragent/Player;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v0, v0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v0, p1, p2}, Lcom/twilio/client/impl/useragent/UserAgent;->createPlayer(Ljava/lang/String;Z)Lcom/twilio/client/impl/useragent/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twilio/client/impl/useragent/Player;->getConfPort()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v2

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callHandle:Ljava/lang/Object;

    check-cast v0, Lcom/twilio/client/impl/useragent/Call;

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Call;->getCallInfo()Lcom/twilio/client/impl/useragent/Call$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Call$Info;->getConfSlot()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twilio/client/impl/useragent/ConfPort;->connect(Lcom/twilio/client/impl/useragent/ConfPort;)V

    return-object v1
.end method

.method public publishDisconnectedConnectionEvent(Lcom/twilio/client/impl/InternalConnection$InternalState;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->PENDING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->CONNECTED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-ne p1, v0, :cond_2

    :cond_0
    const-string v0, "disconnected-by-remote"

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/InternalConnectionImpl;->publishConnectionEvent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/twilio/client/impl/InternalConnection$InternalState;->DISCONNECTING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-ne p1, v0, :cond_1

    const-string v0, "disconnected-by-local"

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/InternalConnectionImpl;->publishConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/CapabilityTokenParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public record(Ljava/lang/String;IZZ)Lcom/twilio/client/impl/useragent/Recorder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    sget-boolean v0, Lcom/twilio/client/impl/InternalConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v0, v0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/twilio/client/impl/useragent/UserAgent;->createRecorder(Ljava/lang/String;J)Lcom/twilio/client/impl/useragent/Recorder;

    move-result-object v1

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callHandle:Ljava/lang/Object;

    check-cast v0, Lcom/twilio/client/impl/useragent/Call;

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Call;->getCallInfo()Lcom/twilio/client/impl/useragent/Call$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Call$Info;->getConfSlot()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v0

    invoke-virtual {v1}, Lcom/twilio/client/impl/useragent/Recorder;->getConfPort()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/useragent/ConfPort;->connect(Lcom/twilio/client/impl/useragent/ConfPort;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/twilio/client/impl/useragent/ConfPort;->getSoundDevice()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v0

    invoke-virtual {v1}, Lcom/twilio/client/impl/useragent/Recorder;->getConfPort()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/useragent/ConfPort;->connect(Lcom/twilio/client/impl/useragent/ConfPort;)V

    :cond_2
    return-object v1
.end method

.method public record(ZZ)Lcom/twilio/client/impl/useragent/Recorder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "audio"

    const-string v1, ".wav"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/twilio/client/impl/InternalConnectionImpl;->record(Ljava/lang/String;IZZ)Lcom/twilio/client/impl/useragent/Recorder;

    move-result-object v0

    return-object v0
.end method

.method public reject()V
    .locals 3

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    sget-object v1, Lcom/twilio/client/impl/InternalConnection$InternalState;->PENDING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/CallControlManager;->rejectCall(Lcom/twilio/client/impl/InternalConnection;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twilio/client/impl/InternalConnectionImpl;->handleStateDisconnected(ILjava/lang/String;)V

    const-string v0, "rejected-by-local"

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/InternalConnectionImpl;->publishConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Rejecting call failed"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendDigits(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    sget-object v1, Lcom/twilio/client/impl/InternalConnection$InternalState;->CONNECTED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending digits "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v0, p0, p1}, Lcom/twilio/client/impl/CallControlManager;->sendDigits(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Sending digits failed"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCallHandle(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callHandle:Ljava/lang/Object;

    return-void
.end method

.method public setConnectionListener(Lcom/twilio/client/ConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->listener:Lcom/twilio/client/ConnectionListener;

    return-void
.end method

.method public setIncomingCallSoundId(I)V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->incomingCallSoundId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setMuted(Z)V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->state:Lcom/twilio/client/impl/InternalConnection$InternalState;

    sget-object v1, Lcom/twilio/client/impl/InternalConnection$InternalState;->CONNECTED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->muted:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->muted:Z

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    iget-boolean v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->muted:Z

    invoke-virtual {v0, p0, v1}, Lcom/twilio/client/impl/CallControlManager;->setCallMuted(Lcom/twilio/client/impl/InternalConnection;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "muted"

    :goto_0
    invoke-direct {p0, v0}, Lcom/twilio/client/impl/InternalConnectionImpl;->publishConnectionEvent(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "unmuted"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting mute state to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setOutgoingCallSid(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->outgoingCallSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->parameters:Ljava/util/Map;

    const-string v1, "CallSid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public submitFeedback(Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;)V
    .locals 5

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submitting feedback received event with score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and issue name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getIncomingCallSid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->submitNoFeedback()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getOutgoingCallSid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    invoke-direct {v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->callSid(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->tempCallSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->tempCallSid(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->INCOMING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->direction(Lcom/twilio/client/impl/analytics/Constants$Direction;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    const-string v1, "twilio-client-android"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->productName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->clientName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityScore(Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->issueName(Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payLoadType(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->build()Lcom/twilio/client/impl/analytics/EventPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/EventPayload;->getPayload()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    sget-object v2, Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;->INFO:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    const-string v3, "feedback"

    const-string v4, "received"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/twilio/client/impl/analytics/EventPublisher;->publish(Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/CapabilityTokenParseException;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->OUTGOING:Lcom/twilio/client/impl/analytics/Constants$Direction;
    :try_end_1
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public submitNoFeedback()V
    .locals 5

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Submitting feedback received-none event."

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getIncomingCallSid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    new-instance v1, Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    invoke-direct {v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->callSid(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->tempCallSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->tempCallSid(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->INCOMING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->direction(Lcom/twilio/client/impl/analytics/Constants$Direction;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    const-string v1, "twilio-client-android"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->productName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->clientName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payLoadType(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->build()Lcom/twilio/client/impl/analytics/EventPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/EventPayload;->getPayload()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->publisher:Lcom/twilio/client/impl/analytics/EventPublisher;

    sget-object v2, Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;->INFO:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    const-string v3, "feedback"

    const-string v4, "received-none"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/twilio/client/impl/analytics/EventPublisher;->publish(Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getOutgoingCallSid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->OUTGOING:Lcom/twilio/client/impl/analytics/Constants$Direction;
    :try_end_1
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/CapabilityTokenParseException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->device:Lcom/twilio/client/impl/DeviceImpl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl;->uuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
