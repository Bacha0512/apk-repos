.class public Lcom/twilio/client/impl/session/events/RxMessageEvent;
.super Lcom/twilio/client/impl/session/Event;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;
    }
.end annotation


# instance fields
.field private rxData:Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;


# direct methods
.method private constructor <init>(Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;)V
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/session/Event$Type;->RX_MSG:Lcom/twilio/client/impl/session/Event$Type;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/session/Event;-><init>(Lcom/twilio/client/impl/session/Event$Type;)V

    iput-object p1, p0, Lcom/twilio/client/impl/session/events/RxMessageEvent;->rxData:Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;

    return-void
.end method


# virtual methods
.method public getRxData()Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/events/RxMessageEvent;->rxData:Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;

    return-object v0
.end method
