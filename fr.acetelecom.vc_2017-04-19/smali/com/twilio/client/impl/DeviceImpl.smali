.class public Lcom/twilio/client/impl/DeviceImpl;
.super Lcom/twilio/client/Device;

# interfaces
.implements Lcom/twilio/client/impl/net/EventStream$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/DeviceImpl$RosterEntry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twilio/client/impl/DeviceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private account:Lcom/twilio/client/impl/session/Account;

.field allConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private callControlManager:Lcom/twilio/client/impl/CallControlManager;

.field capabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twilio/client/Device$Capability;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field capabilityToken:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field curFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private disconnectSoundEnabled:Z

.field private dummyListener:Lcom/twilio/client/DeviceListener;

.field eventStream:Lcom/twilio/client/impl/net/EventStream;

.field private eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

.field incomingIntent:Landroid/app/PendingIntent;

.field private incomingSoundEnabled:Z

.field listener:Lcom/twilio/client/DeviceListener;

.field private mediaManager:Lcom/twilio/client/impl/MediaManager;

.field private networkQueue:Ljava/util/concurrent/ExecutorService;

.field private outgoingSoundEnabled:Z

.field private final roster:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twilio/client/impl/DeviceImpl$RosterEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twilio/client/impl/DeviceImpl$1;

    invoke-direct {v0}, Lcom/twilio/client/impl/DeviceImpl$1;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/DeviceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v0, Lcom/twilio/client/Device;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/DeviceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/twilio/client/impl/TwilioImpl;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/twilio/client/Device;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->uuid:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->roster:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    iput-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    iput-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->incomingIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    const-class v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->networkQueue:Ljava/util/concurrent/ExecutorService;

    iput-boolean v2, p0, Lcom/twilio/client/impl/DeviceImpl;->incomingSoundEnabled:Z

    iput-boolean v2, p0, Lcom/twilio/client/impl/DeviceImpl;->outgoingSoundEnabled:Z

    iput-boolean v2, p0, Lcom/twilio/client/impl/DeviceImpl;->disconnectSoundEnabled:Z

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/twilio/client/impl/TwilioImpl;->getCallControlManager()Lcom/twilio/client/impl/CallControlManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {p1}, Lcom/twilio/client/impl/TwilioImpl;->getEventStreamFactory()Lcom/twilio/client/impl/net/EventStreamFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    invoke-virtual {p1}, Lcom/twilio/client/impl/TwilioImpl;->getMediaManager()Lcom/twilio/client/impl/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    return-void
.end method

.method constructor <init>(Lcom/twilio/client/impl/TwilioImpl;Lcom/twilio/client/impl/DeviceStateInfo;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/DeviceImpl;-><init>(Lcom/twilio/client/impl/TwilioImpl;)V

    iget-object v4, p2, Lcom/twilio/client/impl/DeviceStateInfo;->features:[Lcom/twilio/client/impl/net/EventStream$Feature;

    array-length v5, v4

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    sget-object v7, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v6, v7}, Lcom/twilio/client/impl/net/EventStream$Feature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/twilio/client/impl/net/EventStream$Feature;->INCOMING_CALLS:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v6, v7}, Lcom/twilio/client/impl/net/EventStream$Feature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v1, p2, Lcom/twilio/client/impl/DeviceStateInfo;->incomingIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->incomingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    new-instance v1, Lcom/twilio/client/impl/DeviceImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/twilio/client/impl/DeviceImpl$2;-><init>(Lcom/twilio/client/impl/DeviceImpl;Z)V

    iput-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->dummyListener:Lcom/twilio/client/DeviceListener;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->dummyListener:Lcom/twilio/client/DeviceListener;

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/DeviceImpl;->setDeviceListener(Lcom/twilio/client/DeviceListener;)V

    :cond_4
    iget-object v0, p2, Lcom/twilio/client/impl/DeviceStateInfo;->capabilityToken:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/DeviceImpl;->setCapabilityToken(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/twilio/client/impl/TwilioImpl;Ljava/lang/String;Lcom/twilio/client/DeviceListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/DeviceImpl;-><init>(Lcom/twilio/client/impl/TwilioImpl;)V

    invoke-virtual {p0, p3}, Lcom/twilio/client/impl/DeviceImpl;->setDeviceListener(Lcom/twilio/client/DeviceListener;)V

    invoke-virtual {p0, p2}, Lcom/twilio/client/impl/DeviceImpl;->setCapabilityToken(Ljava/lang/String;)V

    return-void
.end method

.method private handleEventCancel(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CallSid"

    invoke-static {p1, v0}, Lcom/twilio/client/impl/MessageMapHelper;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/DeviceImpl;->findIncomingConnectionByCallSid(Ljava/lang/String;)Lcom/twilio/client/impl/InternalConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->getState()Lcom/twilio/client/Connection$State;

    move-result-object v1

    sget-object v2, Lcom/twilio/client/Connection$State;->PENDING:Lcom/twilio/client/Connection$State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/twilio/client/impl/InternalConnection;->handleStateDisconnected(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private handleEventPresence(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "From"

    invoke-static {p1, v0}, Lcom/twilio/client/impl/MessageMapHelper;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Available"

    invoke-static {p1, v0}, Lcom/twilio/client/impl/MessageMapHelper;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->roster:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/DeviceImpl$RosterEntry;

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Lcom/twilio/client/impl/DeviceImpl$RosterEntry;

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/DeviceImpl$RosterEntry;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/twilio/client/impl/DeviceImpl;->roster:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    sget-object v3, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    new-instance v3, Lcom/twilio/client/PresenceEvent;

    invoke-direct {v3, v1, v2}, Lcom/twilio/client/PresenceEvent;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, p0, v3}, Lcom/twilio/client/DeviceListener;->onPresenceChanged(Lcom/twilio/client/Device;Lcom/twilio/client/PresenceEvent;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->roster:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private handleEventRoster(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Roster_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/DeviceImpl;->handleEventPresence(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private handleRosterOffline(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->roster:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/DeviceImpl$RosterEntry;

    iget-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    new-instance v3, Lcom/twilio/client/PresenceEvent;

    iget-object v0, v0, Lcom/twilio/client/impl/DeviceImpl$RosterEntry;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/twilio/client/PresenceEvent;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, p0, v3}, Lcom/twilio/client/DeviceListener;->onPresenceChanged(Lcom/twilio/client/Device;Lcom/twilio/client/PresenceEvent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->roster:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private setupEventStream()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v2, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v2, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-interface {v1, p0}, Lcom/twilio/client/DeviceListener;->receivePresenceEvents(Lcom/twilio/client/Device;)Z

    move-result v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    sget-object v3, Lcom/twilio/client/impl/net/EventStream$Feature;->PUBLISH_PRESENCE:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    sget-object v2, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    iget-object v3, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/twilio/client/impl/net/EventStreamFactory;->createEventStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;Lcom/twilio/client/impl/net/EventStream$Listener;)Lcom/twilio/client/impl/net/EventStream;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/EventStream;->connect()V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public connect(Ljava/util/Map;Lcom/twilio/client/ConnectionListener;)Lcom/twilio/client/Connection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/ConnectionListener;",
            ")",
            "Lcom/twilio/client/Connection;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->getCurrentActiveConnection()Lcom/twilio/client/impl/InternalConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/DeviceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Only one connection can be active at a time"

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_1
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v3, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v3, p2}, Lcom/twilio/client/impl/CallControlManager;->createOutgoingConnection(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Lcom/twilio/client/ConnectionListener;)Lcom/twilio/client/impl/InternalConnection;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->isOutgoingSoundEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/twilio/client/impl/DeviceImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    sget-object v4, Lcom/twilio/client/impl/MediaManager$StockSound;->OUTGOING:Lcom/twilio/client/impl/MediaManager$StockSound;

    const/4 v5, 0x0

    new-instance v6, Lcom/twilio/client/impl/DeviceImpl$3;

    invoke-direct {v6, p0, v0}, Lcom/twilio/client/impl/DeviceImpl$3;-><init>(Lcom/twilio/client/impl/DeviceImpl;Lcom/twilio/client/impl/InternalConnection;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/twilio/client/impl/MediaManager;->queueSound(Lcom/twilio/client/impl/MediaManager$StockSound;ILcom/twilio/client/impl/MediaManager$SoundPlaybackListener;)I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/twilio/client/impl/DeviceImpl;->rejectAllPendingExcept(Lcom/twilio/client/Connection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/twilio/client/impl/DeviceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v3, "Connecting new call failed"

    invoke-virtual {v2, v3, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->connect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/twilio/client/impl/TwilioError;->INVALID_JWT_TOKEN:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v2, v0}, Lcom/twilio/client/ConnectionListener;->onDisconnected(Lcom/twilio/client/Connection;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method didConnect(Lcom/twilio/client/Connection;)V
    .locals 0

    return-void
.end method

.method didDisconnect(Lcom/twilio/client/Connection;)V
    .locals 2

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnectAll()V
    .locals 4

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/Connection;

    invoke-interface {v0}, Lcom/twilio/client/Connection;->getState()Lcom/twilio/client/Connection$State;

    move-result-object v2

    sget-object v3, Lcom/twilio/client/Connection$State;->PENDING:Lcom/twilio/client/Connection$State;

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Lcom/twilio/client/Connection;->ignore()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-interface {v0}, Lcom/twilio/client/Connection;->disconnect()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/twilio/client/impl/DeviceImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/twilio/client/impl/DeviceImpl;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->uuid:Ljava/util/UUID;

    iget-object v1, p1, Lcom/twilio/client/impl/DeviceImpl;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->release()V

    return-void
.end method

.method protected findConnectionByUUID(Ljava/util/UUID;)Lcom/twilio/client/impl/InternalConnectionImpl;
    .locals 4

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/Connection;

    check-cast v0, Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->getUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Lcom/twilio/client/impl/InternalConnectionImpl;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected findIncomingConnectionByCallSid(Ljava/lang/String;)Lcom/twilio/client/impl/InternalConnection;
    .locals 4

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/Connection;

    check-cast v0, Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->getIncomingCallSid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAccount()Lcom/twilio/client/impl/session/Account;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    return-object v0
.end method

.method public getCapabilities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/twilio/client/Device$Capability;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getCapabilityToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentActiveConnection()Lcom/twilio/client/impl/InternalConnection;
    .locals 5

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/Connection;

    check-cast v0, Lcom/twilio/client/impl/InternalConnectionImpl;

    invoke-virtual {v0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getInternalState()Lcom/twilio/client/impl/InternalConnection$InternalState;

    move-result-object v3

    sget-object v4, Lcom/twilio/client/impl/InternalConnection$InternalState;->CONNECTING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/twilio/client/impl/InternalConnectionImpl;->getInternalState()Lcom/twilio/client/impl/InternalConnection$InternalState;

    move-result-object v3

    sget-object v4, Lcom/twilio/client/impl/InternalConnection$InternalState;->CONNECTED:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-ne v3, v4, :cond_0

    :cond_1
    monitor-exit v1

    :goto_0
    return-object v0

    :cond_2
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEventStream()Lcom/twilio/client/impl/net/EventStream;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    return-object v0
.end method

.method getFeatures()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    return-object v0
.end method

.method getIncomingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->incomingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method getMediaManager()Lcom/twilio/client/impl/MediaManager;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    return-object v0
.end method

.method public getState()Lcom/twilio/client/Device$State;
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/DeviceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Unable to get ConnectivityManager.  Cannot determine Device state."

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/twilio/client/Device$State;->OFFLINE:Lcom/twilio/client/Device$State;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/twilio/client/Device$Capability;->OUTGOING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_1

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/twilio/client/Device$State;->OFFLINE:Lcom/twilio/client/Device$State;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/Connection;

    invoke-interface {v0}, Lcom/twilio/client/Connection;->getState()Lcom/twilio/client/Connection$State;

    move-result-object v0

    sget-object v3, Lcom/twilio/client/Connection$State;->CONNECTING:Lcom/twilio/client/Connection$State;

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/twilio/client/Connection$State;->CONNECTED:Lcom/twilio/client/Connection$State;

    if-ne v0, v3, :cond_3

    :cond_4
    sget-object v0, Lcom/twilio/client/Device$State;->BUSY:Lcom/twilio/client/Device$State;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/CallControlManager;->getAccountConfigId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/CallControlManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/twilio/client/Device$State;->READY:Lcom/twilio/client/Device$State;

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/twilio/client/Device$State;->OFFLINE:Lcom/twilio/client/Device$State;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/twilio/client/Device$State;->OFFLINE:Lcom/twilio/client/Device$State;

    goto/16 :goto_0
.end method

.method getUUID()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public handleEventInvite(Lcom/twilio/client/impl/CallFactory;Ljava/lang/String;Ljava/util/Map;Lcom/twilio/client/impl/useragent/Call;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twilio/client/impl/CallFactory;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/impl/useragent/Call;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "X-Twilio-Params"

    invoke-static {p3, v0}, Lcom/twilio/client/impl/MessageMapHelper;->safeGetMapValueFromStringMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    const-string v0, "CallSid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v1, v2, p0, p2, v0}, Lcom/twilio/client/impl/CallControlManager;->createIncomingConnection(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/InternalConnection;

    move-result-object v3

    :try_start_0
    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    const/4 v4, 0x0

    invoke-virtual {p4}, Lcom/twilio/client/impl/useragent/Call;->getCallId()I

    move-result v5

    move-object v0, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/twilio/client/impl/CallFactory;->newCall(Lcom/twilio/client/impl/session/Account;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;I)Lcom/twilio/client/impl/useragent/Call;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/twilio/client/impl/useragent/Call;->setUserData(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/twilio/client/impl/useragent/Call;->getMediaServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/useragent/Call;->setMediaServerAddress(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/twilio/client/impl/InternalConnection;->setCallHandle(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Call;->setUserData()V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v4, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v6

    move v2, v6

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/Connection;

    sget-object v8, Lcom/twilio/client/impl/DeviceImpl$4;->$SwitchMap$com$twilio$client$Connection$State:[I

    invoke-interface {v0}, Lcom/twilio/client/Connection;->getState()Lcom/twilio/client/Connection$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/Connection$State;->ordinal()I

    move-result v0

    aget v0, v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v1, v2

    :goto_4
    move v2, v1

    move v1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/DeviceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Failed to create new call "

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_4

    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    goto :goto_4

    :cond_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v3}, Lcom/twilio/client/impl/InternalConnection;->getState()Lcom/twilio/client/Connection$State;

    move-result-object v0

    sget-object v4, Lcom/twilio/client/Connection$State;->PENDING:Lcom/twilio/client/Connection$State;

    if-ne v0, v4, :cond_4

    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->isIncomingSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne v1, v7, :cond_4

    if-nez v2, :cond_6

    move v0, v7

    :goto_5
    if-eqz v0, :cond_3

    const/16 v6, 0xf

    :cond_3
    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    sget-object v2, Lcom/twilio/client/impl/MediaManager$StockSound;->INCOMING:Lcom/twilio/client/impl/MediaManager$StockSound;

    invoke-virtual {v1, v2, v6}, Lcom/twilio/client/impl/MediaManager;->queueSound(Lcom/twilio/client/impl/MediaManager$StockSound;I)I

    move-result v1

    if-eqz v0, :cond_4

    invoke-interface {v3, v1}, Lcom/twilio/client/impl/InternalConnection;->setIncomingCallSoundId(I)V

    :cond_4
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->incomingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.twilio.client.Device"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.twilio.client.Connection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_3
    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->incomingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_6
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_6
    move v0, v6

    goto :goto_5

    :catch_1
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/DeviceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Unable to send PendingIntent for incoming connection"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDisconnectSoundEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/DeviceImpl;->disconnectSoundEnabled:Z

    return v0
.end method

.method public isIncomingSoundEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/DeviceImpl;->incomingSoundEnabled:Z

    return v0
.end method

.method public isOutgoingSoundEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/DeviceImpl;->outgoingSoundEnabled:Z

    return v0
.end method

.method public listen()V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v2, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v3, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/twilio/client/impl/CallControlManager;->createUserAccountConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/useragent/config/AccountConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v2, v1}, Lcom/twilio/client/impl/CallControlManager;->registerAccount(Lcom/twilio/client/impl/useragent/config/AccountConfig;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/twilio/client/impl/DeviceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already registered."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-interface {v0, p0}, Lcom/twilio/client/DeviceListener;->onStartListening(Lcom/twilio/client/Device;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/DeviceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Unable to register for incoming calls"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v1

    const-string v2, "Failed to register"

    invoke-interface {v0, p0, v1, v2}, Lcom/twilio/client/DeviceListener;->onStopListening(Lcom/twilio/client/Device;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onEventStreamConnected()V
    .locals 0

    return-void
.end method

.method public onEventStreamDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    const-class v1, Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/DeviceImpl;->handleRosterOffline(Z)V

    return-void
.end method

.method public onEventStreamDisconnected(Ljava/lang/Exception;Z)V
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    const-class v1, Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/twilio/client/impl/net/HttpException;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/twilio/client/impl/net/HttpException;

    invoke-virtual {p1}, Lcom/twilio/client/impl/net/HttpException;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    sget-object v1, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/DeviceImpl;->handleRosterOffline(Z)V

    return-void

    :pswitch_1
    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_MALFORMED_REQUEST:Lcom/twilio/client/impl/TwilioError;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_AUTHORIZATION_ERROR:Lcom/twilio/client/impl/TwilioError;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/twilio/client/impl/TwilioError;->INVALID_ACCOUNT:Lcom/twilio/client/impl/TwilioError;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onFeaturesUpdated()V
    .locals 1

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/TwilioImpl;->deviceChanged(Lcom/twilio/client/impl/DeviceImpl;)V

    return-void
.end method

.method public onMessageReceived(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "EventType"

    invoke-static {p1, v0}, Lcom/twilio/client/impl/MessageMapHelper;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "presence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/DeviceImpl;->handleEventPresence(Ljava/util/Map;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v1, "roster"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/DeviceImpl;->handleEventRoster(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method onNetworkChanged()V
    .locals 6

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/Connection;

    check-cast v0, Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->getState()Lcom/twilio/client/Connection$State;

    move-result-object v3

    sget-object v4, Lcom/twilio/client/Connection$State;->CONNECTED:Lcom/twilio/client/Connection$State;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/twilio/client/impl/DeviceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending reinvite for connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v3, v0}, Lcom/twilio/client/impl/CallControlManager;->reinvite(Lcom/twilio/client/impl/InternalConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method rejectAllPendingExcept(Lcom/twilio/client/Connection;)V
    .locals 4

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->allConnections:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/Connection;

    if-eq p1, v0, :cond_0

    invoke-interface {v0}, Lcom/twilio/client/Connection;->getState()Lcom/twilio/client/Connection$State;

    move-result-object v2

    sget-object v3, Lcom/twilio/client/Connection$State;->PENDING:Lcom/twilio/client/Connection$State;

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Lcom/twilio/client/Connection;->reject()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->releaseResources()V

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/TwilioImpl;->deviceReleased(Lcom/twilio/client/impl/DeviceImpl;)V

    return-void
.end method

.method releaseResources()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->networkQueue:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->networkQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->networkQueue:Ljava/util/concurrent/ExecutorService;

    :cond_0
    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->disconnectAll()V

    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->unlisten()V

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/net/EventStream;->setListener(Lcom/twilio/client/impl/net/EventStream$Listener;)V

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/EventStream;->destroy()V

    iput-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    :cond_1
    return-void
.end method

.method protected setCapabilities(Lcom/twilio/client/impl/CapabilityTokenParser;)V
    .locals 4

    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->getAccountSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->getAccountSID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->getApplicationParameters()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->APPLICATION_PARAMETERS:Lcom/twilio/client/Device$Capability;

    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->getApplicationParameters()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->EXPIRATION:Lcom/twilio/client/Device$Capability;

    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->getExpirationTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->hasIncomingCapability()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->OUTGOING:Lcom/twilio/client/Device$Capability;

    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->hasOutgoingCapability()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->getApplicationSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->APPLICATION_SID:Lcom/twilio/client/Device$Capability;

    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->getApplicationSID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->getClientName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-virtual {p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->getClientName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method protected setCapabilityToken(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->curFeatures:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->clear()V

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    invoke-virtual {v1, v2}, Lcom/twilio/client/impl/net/EventStream;->setListener(Lcom/twilio/client/impl/net/EventStream$Listener;)V

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    invoke-virtual {v1}, Lcom/twilio/client/impl/net/EventStream;->destroy()V

    iput-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/DeviceImpl;->handleRosterOffline(Z)V

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/CallControlManager;->removeUserAccount(Lcom/twilio/client/impl/session/Account;)V

    iput-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v3, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/CallControlManager;->getAccountConfigId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/CallControlManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/CallControlManager;->removeAccountFromRegisteredMap(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-interface {v0, p0}, Lcom/twilio/client/DeviceListener;->onStopListening(Lcom/twilio/client/Device;)V

    :cond_3
    :try_start_0
    iput-object p1, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Lcom/twilio/client/impl/CapabilityTokenParser;

    invoke-direct {v0, p1}, Lcom/twilio/client/impl/CapabilityTokenParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/DeviceImpl;->setCapabilities(Lcom/twilio/client/impl/CapabilityTokenParser;)V

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v3, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_4

    if-nez v1, :cond_7

    :cond_4
    if-nez v0, :cond_6

    const-string v0, "Missing client name"

    :goto_0
    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->INVALID_JWT_TOKEN:Lcom/twilio/client/impl/TwilioError;

    iget-object v3, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v1

    invoke-interface {v3, p0, v1, v0}, Lcom/twilio/client/DeviceListener;->onStopListening(Lcom/twilio/client/Device;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/twilio/client/impl/DeviceImpl;->release()V

    :goto_2
    return-void

    :cond_6
    if-nez v1, :cond_9

    :try_start_1
    const-string v0, "Missing account SID"
    :try_end_1
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :cond_7
    :try_start_2
    iget-object v3, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v4, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v4}, Lcom/twilio/client/impl/CallControlManager;->addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/session/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/session/Account;->setDevice(Lcom/twilio/client/impl/DeviceImpl;)V
    :try_end_2
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/twilio/client/impl/DeviceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v3, "Unable to register for incoming calls"

    invoke-virtual {v1, v3, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v1

    const-string v3, "Failed to register"

    invoke-interface {v0, p0, v1, v3}, Lcom/twilio/client/DeviceListener;->onStopListening(Lcom/twilio/client/Device;ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/twilio/client/impl/CapabilityTokenParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    iput-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1

    :catch_2
    move-exception v0

    iput-object v2, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/twilio/client/impl/DeviceImpl;->setupEventStream()V

    goto :goto_2

    :cond_9
    move-object v0, v2

    goto :goto_0
.end method

.method public setDeviceListener(Lcom/twilio/client/DeviceListener;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    iput-object p1, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-interface {v0, p0}, Lcom/twilio/client/DeviceListener;->receivePresenceEvents(Lcom/twilio/client/Device;)Z

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    sget-object v5, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v0, v5}, Lcom/twilio/client/impl/net/EventStream;->addFeature(Lcom/twilio/client/impl/net/EventStream$Feature;)V

    :cond_0
    :goto_1
    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->dummyListener:Lcom/twilio/client/DeviceListener;

    if-ne v4, v0, :cond_5

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->dummyListener:Lcom/twilio/client/DeviceListener;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v4, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v4, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-interface {v0, p0}, Lcom/twilio/client/DeviceListener;->onStartListening(Lcom/twilio/client/Device;)V

    :cond_2
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->roster:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/DeviceImpl$RosterEntry;

    new-instance v2, Lcom/twilio/client/PresenceEvent;

    iget-object v0, v0, Lcom/twilio/client/impl/DeviceImpl$RosterEntry;->name:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/twilio/client/PresenceEvent;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-interface {v0, p0, v2}, Lcom/twilio/client/DeviceListener;->onPresenceChanged(Lcom/twilio/client/Device;Lcom/twilio/client/PresenceEvent;)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->eventStream:Lcom/twilio/client/impl/net/EventStream;

    sget-object v5, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v0, v5}, Lcom/twilio/client/impl/net/EventStream;->removeFeature(Lcom/twilio/client/impl/net/EventStream$Feature;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setDisconnectSoundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twilio/client/impl/DeviceImpl;->disconnectSoundEnabled:Z

    return-void
.end method

.method public setIncomingIntent(Landroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/twilio/client/impl/DeviceImpl;->incomingIntent:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/TwilioImpl;->deviceChanged(Lcom/twilio/client/impl/DeviceImpl;)V

    return-void
.end method

.method public setIncomingSoundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twilio/client/impl/DeviceImpl;->incomingSoundEnabled:Z

    return-void
.end method

.method public setOutgoingSoundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twilio/client/impl/DeviceImpl;->outgoingSoundEnabled:Z

    return-void
.end method

.method public unlisten()V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    invoke-virtual {v0}, Lcom/twilio/client/impl/session/Account;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    invoke-virtual {v1}, Lcom/twilio/client/impl/session/Account;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v2

    iget-object v1, v2, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v3, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v2, v2, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Lcom/twilio/client/impl/CallControlManager;->createUserAccountConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/useragent/config/AccountConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/DeviceImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/CallControlManager;->unRegisterAccount(Lcom/twilio/client/impl/useragent/config/AccountConfig;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->account:Lcom/twilio/client/impl/session/Account;

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-interface {v0, p0}, Lcom/twilio/client/DeviceListener;->onStopListening(Lcom/twilio/client/Device;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/session/SessionException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateCapabilityToken(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/DeviceImpl;->setCapabilityToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/TwilioImpl;->deviceChanged(Lcom/twilio/client/impl/DeviceImpl;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl;->uuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
