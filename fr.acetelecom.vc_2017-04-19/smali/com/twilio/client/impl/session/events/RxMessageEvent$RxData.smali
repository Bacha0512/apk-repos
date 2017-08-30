.class public Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/session/events/RxMessageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RxData"
.end annotation


# instance fields
.field private message:Lcom/twilio/client/impl/session/Message;


# direct methods
.method private constructor <init>(Lcom/twilio/client/impl/session/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;->message:Lcom/twilio/client/impl/session/Message;

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/twilio/client/impl/session/Message;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;->message:Lcom/twilio/client/impl/session/Message;

    return-object v0
.end method
