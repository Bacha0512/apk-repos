.class public Lcom/twilio/client/impl/session/events/TsxStateEvent;
.super Lcom/twilio/client/impl/session/Event;


# instance fields
.field private final sourceEventData:Ljava/lang/Object;

.field private final sourceEventType:Lcom/twilio/client/impl/session/Event$Type;


# direct methods
.method private constructor <init>(Lcom/twilio/client/impl/session/Event$Type;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/session/Event$Type;->TSX_STATE:Lcom/twilio/client/impl/session/Event$Type;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/session/Event;-><init>(Lcom/twilio/client/impl/session/Event$Type;)V

    iput-object p1, p0, Lcom/twilio/client/impl/session/events/TsxStateEvent;->sourceEventType:Lcom/twilio/client/impl/session/Event$Type;

    iput-object p2, p0, Lcom/twilio/client/impl/session/events/TsxStateEvent;->sourceEventData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSourceEventData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/events/TsxStateEvent;->sourceEventData:Ljava/lang/Object;

    return-object v0
.end method

.method public getSourceEventType()Lcom/twilio/client/impl/session/Event$Type;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/events/TsxStateEvent;->sourceEventType:Lcom/twilio/client/impl/session/Event$Type;

    return-object v0
.end method
