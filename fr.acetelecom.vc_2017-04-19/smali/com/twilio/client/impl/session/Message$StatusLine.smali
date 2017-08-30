.class public Lcom/twilio/client/impl/session/Message$StatusLine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/session/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusLine"
.end annotation


# instance fields
.field private final code:I

.field private final reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/twilio/client/impl/session/Message;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/session/Message;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/session/Message$StatusLine;->this$0:Lcom/twilio/client/impl/session/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/twilio/client/impl/session/Message$StatusLine;->code:I

    iput-object p3, p0, Lcom/twilio/client/impl/session/Message$StatusLine;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/session/Message$StatusLine;->code:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/Message$StatusLine;->reason:Ljava/lang/String;

    return-object v0
.end method
