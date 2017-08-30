.class public Lcom/twilio/client/impl/session/Message$RequestLine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/session/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestLine"
.end annotation


# instance fields
.field private final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/twilio/client/impl/session/Message;

.field private final uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/session/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/session/Message$RequestLine;->this$0:Lcom/twilio/client/impl/session/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twilio/client/impl/session/Message$RequestLine;->method:Ljava/lang/String;

    iput-object p3, p0, Lcom/twilio/client/impl/session/Message$RequestLine;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/Message$RequestLine;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/Message$RequestLine;->uri:Ljava/lang/String;

    return-object v0
.end method
